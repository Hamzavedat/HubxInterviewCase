// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) =>
    _PaginationMeta(
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      pageCount: (json['pageCount'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationMetaToJson(_PaginationMeta instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };

_MetaData _$MetaDataFromJson(Map<String, dynamic> json) => _MetaData(
  pagination: PaginationMeta.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$MetaDataToJson(_MetaData instance) => <String, dynamic>{
  'pagination': instance.pagination,
};

_BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _BaseResponse<T>(
  data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
  meta: MetaData.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BaseResponseToJson<T>(
  _BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': instance.data.map(toJsonT).toList(),
  'meta': instance.meta,
};
