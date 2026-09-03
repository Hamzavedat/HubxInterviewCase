// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryImage {

 String get url;
/// Create a copy of CategoryImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryImageCopyWith<CategoryImage> get copyWith => _$CategoryImageCopyWithImpl<CategoryImage>(this as CategoryImage, _$identity);

  /// Serializes this CategoryImage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CategoryImage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryImage&&(identical(other.url, _this.url) || other.url == _this.url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CategoryImage;
  return Object.hash(runtimeType,_this.url);
}

@override
String toString() {
  final _this = this as CategoryImage;
  return 'CategoryImage(url: ${_this.url})';
}


}

/// @nodoc
abstract mixin class $CategoryImageCopyWith<$Res>  {
  factory $CategoryImageCopyWith(CategoryImage value, $Res Function(CategoryImage) _then) = _$CategoryImageCopyWithImpl;
@useResult
$Res call({
 String url
});




}
/// @nodoc
class _$CategoryImageCopyWithImpl<$Res>
    implements $CategoryImageCopyWith<$Res> {
  _$CategoryImageCopyWithImpl(this._self, this._then);

  final CategoryImage _self;
  final $Res Function(CategoryImage) _then;

/// Create a copy of CategoryImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,}) {
  return _then(CategoryImage(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryImage].
extension CategoryImagePatterns on CategoryImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryImage value)  $default,){
final _that = this;
switch (_that) {
case _CategoryImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryImage value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryImage() when $default != null:
return $default(_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url)  $default,) {final _that = this;
switch (_that) {
case _CategoryImage():
return $default(_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url)?  $default,) {final _that = this;
switch (_that) {
case _CategoryImage() when $default != null:
return $default(_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryImage implements CategoryImage {
  const _CategoryImage({required this.url});
  factory _CategoryImage.fromJson(Map<String, dynamic> json) => _$CategoryImageFromJson(json);

@override final  String url;

/// Create a copy of CategoryImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryImageCopyWith<_CategoryImage> get copyWith => __$CategoryImageCopyWithImpl<_CategoryImage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryImageToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryImage&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,url);
}

@override
String toString() {
    return 'CategoryImage(url: $url)';
}


}

/// @nodoc
abstract mixin class _$CategoryImageCopyWith<$Res> implements $CategoryImageCopyWith<$Res> {
  factory _$CategoryImageCopyWith(_CategoryImage value, $Res Function(_CategoryImage) _then) = __$CategoryImageCopyWithImpl;
@override @useResult
$Res call({
 String url
});




}
/// @nodoc
class __$CategoryImageCopyWithImpl<$Res>
    implements _$CategoryImageCopyWith<$Res> {
  __$CategoryImageCopyWithImpl(this._self, this._then);

  final _CategoryImage _self;
  final $Res Function(_CategoryImage) _then;

/// Create a copy of CategoryImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,}) {
  return _then(_CategoryImage(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
