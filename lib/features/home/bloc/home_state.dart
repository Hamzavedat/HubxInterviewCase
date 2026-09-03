part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<CategoryModel> categories;
  final List<QuestionModel> questions;

  HomeLoaded({required this.categories, required this.questions});
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
}
