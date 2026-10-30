// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ValidatedValue<T,F extends ValueFailure> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidatedValue<T, F>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ValidatedValue<$T, $F>()';
}


}

/// @nodoc
class $ValidatedValueCopyWith<T,F extends ValueFailure,$Res>  {
$ValidatedValueCopyWith(ValidatedValue<T, F> _, $Res Function(ValidatedValue<T, F>) __);
}


/// Adds pattern-matching-related methods to [ValidatedValue].
extension ValidatedValuePatterns<T,F extends ValueFailure> on ValidatedValue<T, F> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ValidatedValid<T, F> value)?  valid,TResult Function( ValidatedInvalid<T, F> value)?  invalid,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ValidatedValid() when valid != null:
return valid(_that);case ValidatedInvalid() when invalid != null:
return invalid(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ValidatedValid<T, F> value)  valid,required TResult Function( ValidatedInvalid<T, F> value)  invalid,}){
final _that = this;
switch (_that) {
case ValidatedValid():
return valid(_that);case ValidatedInvalid():
return invalid(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ValidatedValid<T, F> value)?  valid,TResult? Function( ValidatedInvalid<T, F> value)?  invalid,}){
final _that = this;
switch (_that) {
case ValidatedValid() when valid != null:
return valid(_that);case ValidatedInvalid() when invalid != null:
return invalid(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T value)?  valid,TResult Function( F failure)?  invalid,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ValidatedValid() when valid != null:
return valid(_that.value);case ValidatedInvalid() when invalid != null:
return invalid(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T value)  valid,required TResult Function( F failure)  invalid,}) {final _that = this;
switch (_that) {
case ValidatedValid():
return valid(_that.value);case ValidatedInvalid():
return invalid(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T value)?  valid,TResult? Function( F failure)?  invalid,}) {final _that = this;
switch (_that) {
case ValidatedValid() when valid != null:
return valid(_that.value);case ValidatedInvalid() when invalid != null:
return invalid(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class ValidatedValid<T,F extends ValueFailure> implements ValidatedValue<T, F> {
  const ValidatedValid(this.value);
  

 final  T value;

/// Create a copy of ValidatedValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidatedValidCopyWith<T, F, ValidatedValid<T, F>> get copyWith => _$ValidatedValidCopyWithImpl<T, F, ValidatedValid<T, F>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidatedValid<T, F>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ValidatedValue<$T, $F>.valid(value: $value)';
}


}

/// @nodoc
abstract mixin class $ValidatedValidCopyWith<T,F extends ValueFailure,$Res> implements $ValidatedValueCopyWith<T, F, $Res> {
  factory $ValidatedValidCopyWith(ValidatedValid<T, F> value, $Res Function(ValidatedValid<T, F>) _then) = _$ValidatedValidCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class _$ValidatedValidCopyWithImpl<T,F extends ValueFailure,$Res>
    implements $ValidatedValidCopyWith<T, F, $Res> {
  _$ValidatedValidCopyWithImpl(this._self, this._then);

  final ValidatedValid<T, F> _self;
  final $Res Function(ValidatedValid<T, F>) _then;

/// Create a copy of ValidatedValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(ValidatedValid<T, F>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ValidatedInvalid<T,F extends ValueFailure> implements ValidatedValue<T, F> {
  const ValidatedInvalid(this.failure);
  

 final  F failure;

/// Create a copy of ValidatedValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidatedInvalidCopyWith<T, F, ValidatedInvalid<T, F>> get copyWith => _$ValidatedInvalidCopyWithImpl<T, F, ValidatedInvalid<T, F>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidatedInvalid<T, F>&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'ValidatedValue<$T, $F>.invalid(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ValidatedInvalidCopyWith<T,F extends ValueFailure,$Res> implements $ValidatedValueCopyWith<T, F, $Res> {
  factory $ValidatedInvalidCopyWith(ValidatedInvalid<T, F> value, $Res Function(ValidatedInvalid<T, F>) _then) = _$ValidatedInvalidCopyWithImpl;
@useResult
$Res call({
 F failure
});




}
/// @nodoc
class _$ValidatedInvalidCopyWithImpl<T,F extends ValueFailure,$Res>
    implements $ValidatedInvalidCopyWith<T, F, $Res> {
  _$ValidatedInvalidCopyWithImpl(this._self, this._then);

  final ValidatedInvalid<T, F> _self;
  final $Res Function(ValidatedInvalid<T, F>) _then;

/// Create a copy of ValidatedValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(ValidatedInvalid<T, F>(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as F,
  ));
}


}

// dart format on
