import 'package:flutter_test/flutter_test.dart';
import 'package:hubx_case/data/models/base_response.dart';
import 'package:hubx_case/data/models/category_image.dart';
import 'package:hubx_case/data/models/category_model.dart';
import 'package:hubx_case/data/models/question_model.dart';
import 'package:hubx_case/data/repositories/home_repository.dart';
import 'package:hubx_case/data/services/home_service.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeService extends Mock implements HomeService {}

void main() {
  late MockHomeService mockHomeService;
  late HomeRepositoryImpl repository;

  final sampleMeta = const MetaData(
    pagination: PaginationMeta(page: 1, pageSize: 10, pageCount: 1, total: 2),
  );

  final sampleCategories = [
    CategoryModel(
      id: 1,
      name: 'house_plants',
      title: 'House Plants',
      image: const CategoryImage(url: 'https://plant.id/images/house_plants.png'),
    ),
    CategoryModel(
      id: 2,
      name: 'garden',
      title: 'Outdoor Garden',
      image: const CategoryImage(url: 'https://plant.id/images/garden.png'),
    ),
  ];

  final sampleQuestions = [
    const QuestionModel(
      id: 1,
      title: 'How to water plants?',
      subtitle: 'Watering guide for indoor plants',
      imageUri: 'https://plant.id/images/watering_guide.png',
      uri: 'https://plant.id/questions/1',
      order: 1,
    ),
  ];

  setUp(() {
    mockHomeService = MockHomeService();
    repository = HomeRepositoryImpl(homeService: mockHomeService);
  });

  group('HomeRepositoryImpl Tests', () {
    test('getCategoriesList fetches from service and caches the result', () async {
      when(
        () => mockHomeService.getCategories(),
      ).thenAnswer((_) async => BaseResponse(data: sampleCategories, meta: sampleMeta));

      final categories1 = await repository.getCategoriesList();
      expect(categories1.length, 2);
      expect(categories1.first.title, 'House Plants');

      final categories2 = await repository.getCategoriesList();
      expect(categories2.length, 2);

      verify(() => mockHomeService.getCategories()).called(1);
    });

    test('getQuestionsList fetches from service and caches', () async {
      when(() => mockHomeService.getQuestions()).thenAnswer((_) async => sampleQuestions);

      final questions = await repository.getQuestionsList();
      expect(questions.length, 1);
      expect(questions.first.title, 'How to water plants?');

      verify(() => mockHomeService.getQuestions()).called(1);
    });

    test('searchAll filters categories and questions correctly', () async {
      when(
        () => mockHomeService.getCategories(),
      ).thenAnswer((_) async => BaseResponse(data: sampleCategories, meta: sampleMeta));
      when(() => mockHomeService.getQuestions()).thenAnswer((_) async => sampleQuestions);

      final (filteredCats, filteredQuests) = await repository.searchAll('garden');
      expect(filteredCats.length, 1);
      expect(filteredCats.first.title, 'Outdoor Garden');
      expect(filteredQuests.isEmpty, true);
    });

    test('clearCache resets cached data', () async {
      when(
        () => mockHomeService.getCategories(),
      ).thenAnswer((_) async => BaseResponse(data: sampleCategories, meta: sampleMeta));

      await repository.getCategoriesList();
      repository.clearCache();
      await repository.getCategoriesList();

      verify(() => mockHomeService.getCategories()).called(2);
    });
  });
}
