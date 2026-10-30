// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_storage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppStorageModel {

 String get themeMode;
/// Create a copy of AppStorageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStorageModelCopyWith<AppStorageModel> get copyWith => _$AppStorageModelCopyWithImpl<AppStorageModel>(this as AppStorageModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStorageModel&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'AppStorageModel(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $AppStorageModelCopyWith<$Res>  {
  factory $AppStorageModelCopyWith(AppStorageModel value, $Res Function(AppStorageModel) _then) = _$AppStorageModelCopyWithImpl;
@useResult
$Res call({
 String themeMode
});




}
/// @nodoc
class _$AppStorageModelCopyWithImpl<$Res>
    implements $AppStorageModelCopyWith<$Res> {
  _$AppStorageModelCopyWithImpl(this._self, this._then);

  final AppStorageModel _self;
  final $Res Function(AppStorageModel) _then;

/// Create a copy of AppStorageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppStorageModel].
extension AppStorageModelPatterns on AppStorageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppStorageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppStorageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppStorageModel value)  $default,){
final _that = this;
switch (_that) {
case _AppStorageModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppStorageModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppStorageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String themeMode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppStorageModel() when $default != null:
return $default(_that.themeMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String themeMode)  $default,) {final _that = this;
switch (_that) {
case _AppStorageModel():
return $default(_that.themeMode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String themeMode)?  $default,) {final _that = this;
switch (_that) {
case _AppStorageModel() when $default != null:
return $default(_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc


class _AppStorageModel extends AppStorageModel {
  const _AppStorageModel({required this.themeMode}): super._();
  

@override final  String themeMode;

/// Create a copy of AppStorageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStorageModelCopyWith<_AppStorageModel> get copyWith => __$AppStorageModelCopyWithImpl<_AppStorageModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppStorageModel&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'AppStorageModel(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class _$AppStorageModelCopyWith<$Res> implements $AppStorageModelCopyWith<$Res> {
  factory _$AppStorageModelCopyWith(_AppStorageModel value, $Res Function(_AppStorageModel) _then) = __$AppStorageModelCopyWithImpl;
@override @useResult
$Res call({
 String themeMode
});




}
/// @nodoc
class __$AppStorageModelCopyWithImpl<$Res>
    implements _$AppStorageModelCopyWith<$Res> {
  __$AppStorageModelCopyWithImpl(this._self, this._then);

  final _AppStorageModel _self;
  final $Res Function(_AppStorageModel) _then;

/// Create a copy of AppStorageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(_AppStorageModel(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
