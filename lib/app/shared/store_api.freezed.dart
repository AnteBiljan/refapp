// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ApiResponse {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponse);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ApiResponse()';
}


}

/// @nodoc
class $ApiResponseCopyWith<$Res>  {
$ApiResponseCopyWith(ApiResponse _, $Res Function(ApiResponse) __);
}


/// Adds pattern-matching-related methods to [ApiResponse].
extension ApiResponsePatterns on ApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApiResponseSuccess value)?  success,TResult Function( ApiResponseFailed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApiResponseSuccess() when success != null:
return success(_that);case ApiResponseFailed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApiResponseSuccess value)  success,required TResult Function( ApiResponseFailed value)  failed,}){
final _that = this;
switch (_that) {
case ApiResponseSuccess():
return success(_that);case ApiResponseFailed():
return failed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApiResponseSuccess value)?  success,TResult? Function( ApiResponseFailed value)?  failed,}){
final _that = this;
switch (_that) {
case ApiResponseSuccess() when success != null:
return success(_that);case ApiResponseFailed() when failed != null:
return failed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Map<String, dynamic> data)?  success,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApiResponseSuccess() when success != null:
return success(_that.data);case ApiResponseFailed() when failed != null:
return failed(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Map<String, dynamic> data)  success,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case ApiResponseSuccess():
return success(_that.data);case ApiResponseFailed():
return failed(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Map<String, dynamic> data)?  success,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case ApiResponseSuccess() when success != null:
return success(_that.data);case ApiResponseFailed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ApiResponseSuccess implements ApiResponse {
  const ApiResponseSuccess(final  Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseSuccessCopyWith<ApiResponseSuccess> get copyWith => _$ApiResponseSuccessCopyWithImpl<ApiResponseSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseSuccess&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ApiResponse.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $ApiResponseSuccessCopyWith<$Res> implements $ApiResponseCopyWith<$Res> {
  factory $ApiResponseSuccessCopyWith(ApiResponseSuccess value, $Res Function(ApiResponseSuccess) _then) = _$ApiResponseSuccessCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$ApiResponseSuccessCopyWithImpl<$Res>
    implements $ApiResponseSuccessCopyWith<$Res> {
  _$ApiResponseSuccessCopyWithImpl(this._self, this._then);

  final ApiResponseSuccess _self;
  final $Res Function(ApiResponseSuccess) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ApiResponseSuccess(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class ApiResponseFailed implements ApiResponse {
  const ApiResponseFailed(this.message);
  

 final  String message;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiResponseFailedCopyWith<ApiResponseFailed> get copyWith => _$ApiResponseFailedCopyWithImpl<ApiResponseFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiResponseFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ApiResponse.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $ApiResponseFailedCopyWith<$Res> implements $ApiResponseCopyWith<$Res> {
  factory $ApiResponseFailedCopyWith(ApiResponseFailed value, $Res Function(ApiResponseFailed) _then) = _$ApiResponseFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ApiResponseFailedCopyWithImpl<$Res>
    implements $ApiResponseFailedCopyWith<$Res> {
  _$ApiResponseFailedCopyWithImpl(this._self, this._then);

  final ApiResponseFailed _self;
  final $Res Function(ApiResponseFailed) _then;

/// Create a copy of ApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ApiResponseFailed(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
