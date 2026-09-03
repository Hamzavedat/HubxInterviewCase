// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationMeta {

 int get page; int get pageSize; int get pageCount; int get total;
/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<PaginationMeta> get copyWith => _$PaginationMetaCopyWithImpl<PaginationMeta>(this as PaginationMeta, _$identity);

  /// Serializes this PaginationMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaginationMeta;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationMeta&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.pageSize, _this.pageSize) || other.pageSize == _this.pageSize)&&(identical(other.pageCount, _this.pageCount) || other.pageCount == _this.pageCount)&&(identical(other.total, _this.total) || other.total == _this.total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaginationMeta;
  return Object.hash(runtimeType,_this.page,_this.pageSize,_this.pageCount,_this.total);
}

@override
String toString() {
  final _this = this as PaginationMeta;
  return 'PaginationMeta(page: ${_this.page}, pageSize: ${_this.pageSize}, pageCount: ${_this.pageCount}, total: ${_this.total})';
}


}

/// @nodoc
abstract mixin class $PaginationMetaCopyWith<$Res>  {
  factory $PaginationMetaCopyWith(PaginationMeta value, $Res Function(PaginationMeta) _then) = _$PaginationMetaCopyWithImpl;
@useResult
$Res call({
 int page, int pageSize, int pageCount, int total
});




}
/// @nodoc
class _$PaginationMetaCopyWithImpl<$Res>
    implements $PaginationMetaCopyWith<$Res> {
  _$PaginationMetaCopyWithImpl(this._self, this._then);

  final PaginationMeta _self;
  final $Res Function(PaginationMeta) _then;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? pageSize = null,Object? pageCount = null,Object? total = null,}) {
  return _then(PaginationMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginationMeta].
extension PaginationMetaPatterns on PaginationMeta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginationMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginationMeta value)  $default,){
final _that = this;
switch (_that) {
case _PaginationMeta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginationMeta value)?  $default,){
final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int pageSize,  int pageCount,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that.page,_that.pageSize,_that.pageCount,_that.total);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int pageSize,  int pageCount,  int total)  $default,) {final _that = this;
switch (_that) {
case _PaginationMeta():
return $default(_that.page,_that.pageSize,_that.pageCount,_that.total);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int pageSize,  int pageCount,  int total)?  $default,) {final _that = this;
switch (_that) {
case _PaginationMeta() when $default != null:
return $default(_that.page,_that.pageSize,_that.pageCount,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginationMeta implements PaginationMeta {
  const _PaginationMeta({required this.page, required this.pageSize, required this.pageCount, required this.total});
  factory _PaginationMeta.fromJson(Map<String, dynamic> json) => _$PaginationMetaFromJson(json);

@override final  int page;
@override final  int pageSize;
@override final  int pageCount;
@override final  int total;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationMetaCopyWith<_PaginationMeta> get copyWith => __$PaginationMetaCopyWithImpl<_PaginationMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationMetaToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationMeta&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.pageCount, pageCount) || other.pageCount == pageCount)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,page,pageSize,pageCount,total);
}

@override
String toString() {
    return 'PaginationMeta(page: $page, pageSize: $pageSize, pageCount: $pageCount, total: $total)';
}


}

/// @nodoc
abstract mixin class _$PaginationMetaCopyWith<$Res> implements $PaginationMetaCopyWith<$Res> {
  factory _$PaginationMetaCopyWith(_PaginationMeta value, $Res Function(_PaginationMeta) _then) = __$PaginationMetaCopyWithImpl;
@override @useResult
$Res call({
 int page, int pageSize, int pageCount, int total
});




}
/// @nodoc
class __$PaginationMetaCopyWithImpl<$Res>
    implements _$PaginationMetaCopyWith<$Res> {
  __$PaginationMetaCopyWithImpl(this._self, this._then);

  final _PaginationMeta _self;
  final $Res Function(_PaginationMeta) _then;

/// Create a copy of PaginationMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? pageSize = null,Object? pageCount = null,Object? total = null,}) {
  return _then(_PaginationMeta(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,pageCount: null == pageCount ? _self.pageCount : pageCount // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MetaData {

 PaginationMeta get pagination;
/// Create a copy of MetaData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetaDataCopyWith<MetaData> get copyWith => _$MetaDataCopyWithImpl<MetaData>(this as MetaData, _$identity);

  /// Serializes this MetaData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MetaData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MetaData&&(identical(other.pagination, _this.pagination) || other.pagination == _this.pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MetaData;
  return Object.hash(runtimeType,_this.pagination);
}

@override
String toString() {
  final _this = this as MetaData;
  return 'MetaData(pagination: ${_this.pagination})';
}


}

/// @nodoc
abstract mixin class $MetaDataCopyWith<$Res>  {
  factory $MetaDataCopyWith(MetaData value, $Res Function(MetaData) _then) = _$MetaDataCopyWithImpl;
@useResult
$Res call({
 PaginationMeta pagination
});


$PaginationMetaCopyWith<$Res> get pagination;

}
/// @nodoc
class _$MetaDataCopyWithImpl<$Res>
    implements $MetaDataCopyWith<$Res> {
  _$MetaDataCopyWithImpl(this._self, this._then);

  final MetaData _self;
  final $Res Function(MetaData) _then;

/// Create a copy of MetaData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pagination = null,}) {
  return _then(MetaData(
pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationMeta,
  ));
}
/// Create a copy of MetaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get pagination {
  
  return $PaginationMetaCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [MetaData].
extension MetaDataPatterns on MetaData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MetaData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MetaData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MetaData value)  $default,){
final _that = this;
switch (_that) {
case _MetaData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MetaData value)?  $default,){
final _that = this;
switch (_that) {
case _MetaData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaginationMeta pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MetaData() when $default != null:
return $default(_that.pagination);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaginationMeta pagination)  $default,) {final _that = this;
switch (_that) {
case _MetaData():
return $default(_that.pagination);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaginationMeta pagination)?  $default,) {final _that = this;
switch (_that) {
case _MetaData() when $default != null:
return $default(_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MetaData implements MetaData {
  const _MetaData({required this.pagination});
  factory _MetaData.fromJson(Map<String, dynamic> json) => _$MetaDataFromJson(json);

@override final  PaginationMeta pagination;

/// Create a copy of MetaData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetaDataCopyWith<_MetaData> get copyWith => __$MetaDataCopyWithImpl<_MetaData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetaDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MetaData&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pagination);
}

@override
String toString() {
    return 'MetaData(pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$MetaDataCopyWith<$Res> implements $MetaDataCopyWith<$Res> {
  factory _$MetaDataCopyWith(_MetaData value, $Res Function(_MetaData) _then) = __$MetaDataCopyWithImpl;
@override @useResult
$Res call({
 PaginationMeta pagination
});


@override $PaginationMetaCopyWith<$Res> get pagination;

}
/// @nodoc
class __$MetaDataCopyWithImpl<$Res>
    implements _$MetaDataCopyWith<$Res> {
  __$MetaDataCopyWithImpl(this._self, this._then);

  final _MetaData _self;
  final $Res Function(_MetaData) _then;

/// Create a copy of MetaData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pagination = null,}) {
  return _then(_MetaData(
pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as PaginationMeta,
  ));
}

/// Create a copy of MetaData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationMetaCopyWith<$Res> get pagination {
  
  return $PaginationMetaCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
mixin _$BaseResponse<T> {

 List<T> get data; MetaData get meta;
/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseCopyWith<T, BaseResponse<T>> get copyWith => _$BaseResponseCopyWithImpl<T, BaseResponse<T>>(this as BaseResponse<T>, _$identity);

  /// Serializes this BaseResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  final _this = this as BaseResponse<T>;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponse<T>&&const DeepCollectionEquality().equals(other.data, _this.data)&&(identical(other.meta, _this.meta) || other.meta == _this.meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BaseResponse<T>;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.data),_this.meta);
}

@override
String toString() {
  final _this = this as BaseResponse<T>;
  return 'BaseResponse<$T>(data: ${_this.data}, meta: ${_this.meta})';
}


}

/// @nodoc
abstract mixin class $BaseResponseCopyWith<T,$Res>  {
  factory $BaseResponseCopyWith(BaseResponse<T> value, $Res Function(BaseResponse<T>) _then) = _$BaseResponseCopyWithImpl;
@useResult
$Res call({
 List<T> data, MetaData meta
});


$MetaDataCopyWith<$Res> get meta;

}
/// @nodoc
class _$BaseResponseCopyWithImpl<T,$Res>
    implements $BaseResponseCopyWith<T, $Res> {
  _$BaseResponseCopyWithImpl(this._self, this._then);

  final BaseResponse<T> _self;
  final $Res Function(BaseResponse<T>) _then;

/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,}) {
  return _then(BaseResponse(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<T>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaData,
  ));
}
/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaDataCopyWith<$Res> get meta {
  
  return $MetaDataCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [BaseResponse].
extension BaseResponsePatterns<T> on BaseResponse<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseResponse<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseResponse<T> value)  $default,){
final _that = this;
switch (_that) {
case _BaseResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseResponse<T> value)?  $default,){
final _that = this;
switch (_that) {
case _BaseResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> data,  MetaData meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseResponse() when $default != null:
return $default(_that.data,_that.meta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> data,  MetaData meta)  $default,) {final _that = this;
switch (_that) {
case _BaseResponse():
return $default(_that.data,_that.meta);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> data,  MetaData meta)?  $default,) {final _that = this;
switch (_that) {
case _BaseResponse() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _BaseResponse<T> implements BaseResponse<T> {
  const _BaseResponse({required  List<T> data, required this.meta}): _data = data;
  factory _BaseResponse.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$BaseResponseFromJson(json,fromJsonT);

 final  List<T> _data;
@override List<T> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  MetaData meta;

/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseCopyWith<T, _BaseResponse<T>> get copyWith => __$BaseResponseCopyWithImpl<T, _BaseResponse<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$BaseResponseToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponse<T>&&const DeepCollectionEquality().equals(other.data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);
}

@override
String toString() {
    return 'BaseResponse<$T>(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseCopyWith<T,$Res> implements $BaseResponseCopyWith<T, $Res> {
  factory _$BaseResponseCopyWith(_BaseResponse<T> value, $Res Function(_BaseResponse<T>) _then) = __$BaseResponseCopyWithImpl;
@override @useResult
$Res call({
 List<T> data, MetaData meta
});


@override $MetaDataCopyWith<$Res> get meta;

}
/// @nodoc
class __$BaseResponseCopyWithImpl<T,$Res>
    implements _$BaseResponseCopyWith<T, $Res> {
  __$BaseResponseCopyWithImpl(this._self, this._then);

  final _BaseResponse<T> _self;
  final $Res Function(_BaseResponse<T>) _then;

/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,}) {
  return _then(_BaseResponse<T>(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<T>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaData,
  ));
}

/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaDataCopyWith<$Res> get meta {
  
  return $MetaDataCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
