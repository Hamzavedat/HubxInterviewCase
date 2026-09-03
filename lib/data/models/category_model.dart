import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx_case/data/models/category_image.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
    required String title,
    required CategoryImage image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

extension CategoryModelX on CategoryModel {
  String get imageUrl => image.url;
}
