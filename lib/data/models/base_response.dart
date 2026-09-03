import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
abstract class PaginationMeta with _$PaginationMeta {
  const factory PaginationMeta({
    required int page,
    required int pageSize,
    required int pageCount,
    required int total,
  }) = _PaginationMeta;

  factory PaginationMeta.fromJson(Map<String, dynamic> json) =>
      _$PaginationMetaFromJson(json);
}

@freezed
abstract class MetaData with _$MetaData {
  const factory MetaData({required PaginationMeta pagination}) = _MetaData;

  factory MetaData.fromJson(Map<String, dynamic> json) => _$MetaDataFromJson(json);
}

@Freezed(genericArgumentFactories: true)
abstract class BaseResponse<T> with _$BaseResponse<T> {
  const factory BaseResponse({required List<T> data, required MetaData meta}) =
      _BaseResponse<T>;

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BaseResponseFromJson(json, fromJsonT);
}
