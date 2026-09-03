import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_image.freezed.dart';
part 'category_image.g.dart';

@freezed
abstract class CategoryImage with _$CategoryImage {
  const factory CategoryImage({required String url}) = _CategoryImage;

  factory CategoryImage.fromJson(Map<String, dynamic> json) =>
      _$CategoryImageFromJson(json);
}
