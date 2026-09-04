import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubx_case/core/di/app_container.dart';
import 'package:hubx_case/data/models/category_model.dart';
import 'package:hubx_case/data/models/question_model.dart';
import 'package:hubx_case/data/repositories/home_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeCubit({HomeRepository? homeRepository})
    : _homeRepository = homeRepository ?? AppContainer.getIt<HomeRepository>(),
      super(HomeInitial()) {
    fetchData();
  }

  Future<void> fetchData() async {
    emit(HomeLoading());

    try {
      final results = await Future.wait([
        _homeRepository.getCategoriesList(),
        _homeRepository.getQuestionsList(),
      ]);

      final categories = results[0] as List<CategoryModel>;
      final questions = results[1] as List<QuestionModel>;

      emit(HomeLoaded(categories: categories, questions: questions));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }

  Timer? _searchTimer;
  String currentQuery = '';

  void search(String query) {
    currentQuery = query.trim();
    _searchTimer?.cancel();
    _searchTimer = Timer(const Duration(seconds: 2), () async {
      await _executeSearch();
    });
  }

  Future<void> _executeSearch() async {
    if (currentQuery.isEmpty) {
      await fetchData();
      return;
    }

    try {
      emit(HomeLoading());
      final (categories, questions) = await _homeRepository.searchAll(currentQuery);
      emit(HomeLoaded(categories: categories, questions: questions));
    } catch (e) {
      emit(HomeError(e.toString()));
    }
  }

  Future<void> refreshData() async {
    _homeRepository.clearCache();
    emit(HomeLoading());
    await Future.delayed(
      const Duration(milliseconds: 800),
    ); // Ensure shimmer is visible to user

    if (currentQuery.isNotEmpty) {
      await _executeSearch();
    } else {
      await fetchData();
    }
  }

  @override
  Future<void> close() {
    _searchTimer?.cancel();
    return super.close();
  }
}
