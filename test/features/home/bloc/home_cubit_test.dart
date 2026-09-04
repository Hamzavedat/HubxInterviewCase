import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hubx_case/data/models/category_image.dart';
import 'package:hubx_case/data/models/category_model.dart';
import 'package:hubx_case/data/models/question_model.dart';
import 'package:hubx_case/data/repositories/home_repository.dart';
import 'package:hubx_case/features/home/bloc/home_cubit.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  late MockHomeRepository mockRepository;

  final List<CategoryModel> sampleCategories = [
    CategoryModel(
      id: 1,
      name: 'house_plants',
      title: 'House Plants',
      image: const CategoryImage(url: 'https://plant.id/images/house_plants.png'),
    ),
  ];

  final List<QuestionModel> sampleQuestions = [
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
    mockRepository = MockHomeRepository();
  });

  group('HomeCubit Tests', () {
    blocTest<HomeCubit, HomeState>(
      'emits [HomeLoaded] when initial fetchData succeeds',
      build: () {
        when(() => mockRepository.getCategoriesList())
            .thenAnswer((_) async => sampleCategories);
        when(() => mockRepository.getQuestionsList())
            .thenAnswer((_) async => sampleQuestions);
        return HomeCubit(homeRepository: mockRepository);
      },
      expect: () => [
        isA<HomeLoaded>()
            .having((s) => s.categories.length, 'categories length', 1)
            .having((s) => s.questions.length, 'questions length', 1),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'emits [HomeError] when initial fetchData throws an error',
      build: () {
        when(() => mockRepository.getCategoriesList())
            .thenAnswer((_) async => throw Exception('Network Error'));
        when(() => mockRepository.getQuestionsList())
            .thenAnswer((_) async => sampleQuestions);
        return HomeCubit(homeRepository: mockRepository);
      },
      expect: () => [
        isA<HomeError>().having(
          (s) => s.message,
          'error message',
          contains('Network Error'),
        ),
      ],
    );

    blocTest<HomeCubit, HomeState>(
      'refreshData clears cache and re-fetches data',
      build: () {
        when(() => mockRepository.getCategoriesList())
            .thenAnswer((_) async => sampleCategories);
        when(() => mockRepository.getQuestionsList())
            .thenAnswer((_) async => sampleQuestions);
        when(() => mockRepository.clearCache()).thenAnswer((_) {});
        return HomeCubit(homeRepository: mockRepository);
      },
      act: (cubit) async {
        await cubit.refreshData();
      },
      verify: (_) {
        verify(() => mockRepository.clearCache()).called(1);
      },
    );
  });
}
