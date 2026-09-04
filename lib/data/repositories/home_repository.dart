import 'package:hubx_case/core/di/app_container.dart';
import 'package:hubx_case/data/models/category_model.dart';
import 'package:hubx_case/data/models/question_model.dart';
import 'package:hubx_case/data/services/home_service.dart';

abstract class HomeRepository {
  Future<List<CategoryModel>> getCategoriesList();
  Future<CategoryModel> getCategory(int id);
  Future<List<QuestionModel>> getQuestionsList();
  Future<QuestionModel> getQuestion(int id);
  Future<(List<CategoryModel>, List<QuestionModel>)> searchAll(String query);
  void clearCache();
}

class HomeRepositoryImpl implements HomeRepository {
  final HomeService _homeService;
  List<CategoryModel>? _cachedCategories;
  List<QuestionModel>? _cachedQuestions;

  HomeRepositoryImpl({HomeService? homeService})
    : _homeService = homeService ?? AppContainer.getIt<HomeService>();

  @override
  Future<List<CategoryModel>> getCategoriesList() async {
    if (_cachedCategories != null) return _cachedCategories!;
    final response = await _homeService.getCategories();
    _cachedCategories = response.data;
    return _cachedCategories!;
  }

  @override
  Future<CategoryModel> getCategory(int id) async {
    final list = await getCategoriesList();
    return list.firstWhere(
      (element) => element.id == id,
      orElse: () => throw Exception("Category not found with id: $id"),
    );
  }

  @override
  Future<List<QuestionModel>> getQuestionsList() async {
    if (_cachedQuestions != null) return _cachedQuestions!;
    _cachedQuestions = await _homeService.getQuestions();
    return _cachedQuestions!;
  }

  @override
  Future<QuestionModel> getQuestion(int id) async {
    final list = await getQuestionsList();
    return list.firstWhere(
      (element) => element.id == id,
      orElse: () => throw Exception("Question not found with id: $id"),
    );
  }

  @override
  Future<(List<CategoryModel>, List<QuestionModel>)> searchAll(String query) async {
    final cats = await getCategoriesList();
    final quests = await getQuestionsList();

    if (query.trim().isEmpty) return (cats, quests);

    final q = query.trim().toLowerCase();

    final filteredCats = cats.where((c) {
      return c.title.toLowerCase().contains(q) || c.name.toLowerCase().contains(q);
    }).toList();

    final filteredQuests = quests.where((qu) {
      return qu.title.toLowerCase().contains(q) || qu.subtitle.toLowerCase().contains(q);
    }).toList();

    return (filteredCats, filteredQuests);
  }

  @override
  void clearCache() {
    _cachedCategories = null;
    _cachedQuestions = null;
  }
}
