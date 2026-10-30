// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StorageResponse<R> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageResponse<R>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StorageResponse<$R>()';
}


}

/// @nodoc
class $StorageResponseCopyWith<R,$Res>  {
$StorageResponseCopyWith(StorageResponse<R> _, $Res Function(StorageResponse<R>) __);
}


/// Adds pattern-matching-related methods to [StorageResponse].
extension StorageResponsePatterns<R> on StorageResponse<R> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StorageResponseLoaded<R> value)?  success,TResult Function( StorageResponseFailed<R> value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StorageResponseLoaded() when success != null:
return success(_that);case StorageResponseFailed() when failed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StorageResponseLoaded<R> value)  success,required TResult Function( StorageResponseFailed<R> value)  failed,}){
final _that = this;
switch (_that) {
case StorageResponseLoaded():
return success(_that);case StorageResponseFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StorageResponseLoaded<R> value)?  success,TResult? Function( StorageResponseFailed<R> value)?  failed,}){
final _that = this;
switch (_that) {
case StorageResponseLoaded() when success != null:
return success(_that);case StorageResponseFailed() when failed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( R storageObject)?  success,TResult Function( StorageFailure failure)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StorageResponseLoaded() when success != null:
return success(_that.storageObject);case StorageResponseFailed() when failed != null:
return failed(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( R storageObject)  success,required TResult Function( StorageFailure failure)  failed,}) {final _that = this;
switch (_that) {
case StorageResponseLoaded():
return success(_that.storageObject);case StorageResponseFailed():
return failed(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( R storageObject)?  success,TResult? Function( StorageFailure failure)?  failed,}) {final _that = this;
switch (_that) {
case StorageResponseLoaded() when success != null:
return success(_that.storageObject);case StorageResponseFailed() when failed != null:
return failed(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class StorageResponseLoaded<R> extends StorageResponse<R> {
  const StorageResponseLoaded(this.storageObject): super._();
  

 final  R storageObject;

/// Create a copy of StorageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageResponseLoadedCopyWith<R, StorageResponseLoaded<R>> get copyWith => _$StorageResponseLoadedCopyWithImpl<R, StorageResponseLoaded<R>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageResponseLoaded<R>&&const DeepCollectionEquality().equals(other.storageObject, storageObject));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(storageObject));

@override
String toString() {
  return 'StorageResponse<$R>.success(storageObject: $storageObject)';
}


}

/// @nodoc
abstract mixin class $StorageResponseLoadedCopyWith<R,$Res> implements $StorageResponseCopyWith<R, $Res> {
  factory $StorageResponseLoadedCopyWith(StorageResponseLoaded<R> value, $Res Function(StorageResponseLoaded<R>) _then) = _$StorageResponseLoadedCopyWithImpl;
@useResult
$Res call({
 R storageObject
});




}
/// @nodoc
class _$StorageResponseLoadedCopyWithImpl<R,$Res>
    implements $StorageResponseLoadedCopyWith<R, $Res> {
  _$StorageResponseLoadedCopyWithImpl(this._self, this._then);

  final StorageResponseLoaded<R> _self;
  final $Res Function(StorageResponseLoaded<R>) _then;

/// Create a copy of StorageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? storageObject = freezed,}) {
  return _then(StorageResponseLoaded<R>(
freezed == storageObject ? _self.storageObject : storageObject // ignore: cast_nullable_to_non_nullable
as R,
  ));
}


}

/// @nodoc


class StorageResponseFailed<R> extends StorageResponse<R> {
  const StorageResponseFailed(this.failure): super._();
  

 final  StorageFailure failure;

/// Create a copy of StorageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StorageResponseFailedCopyWith<R, StorageResponseFailed<R>> get copyWith => _$StorageResponseFailedCopyWithImpl<R, StorageResponseFailed<R>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageResponseFailed<R>&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'StorageResponse<$R>.failed(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $StorageResponseFailedCopyWith<R,$Res> implements $StorageResponseCopyWith<R, $Res> {
  factory $StorageResponseFailedCopyWith(StorageResponseFailed<R> value, $Res Function(StorageResponseFailed<R>) _then) = _$StorageResponseFailedCopyWithImpl;
@useResult
$Res call({
 StorageFailure failure
});


$StorageFailureCopyWith<$Res> get failure;

}
/// @nodoc
class _$StorageResponseFailedCopyWithImpl<R,$Res>
    implements $StorageResponseFailedCopyWith<R, $Res> {
  _$StorageResponseFailedCopyWithImpl(this._self, this._then);

  final StorageResponseFailed<R> _self;
  final $Res Function(StorageResponseFailed<R>) _then;

/// Create a copy of StorageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(StorageResponseFailed<R>(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as StorageFailure,
  ));
}

/// Create a copy of StorageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StorageFailureCopyWith<$Res> get failure {
  
  return $StorageFailureCopyWith<$Res>(_self.failure, (value) {
    return _then(_self.copyWith(failure: value));
  });
}
}

// dart format on
