// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Result<T,F extends Failure> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result<T, F>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Result<$T, $F>()';
}


}

/// @nodoc
class $ResultCopyWith<T,F extends Failure,$Res>  {
$ResultCopyWith(Result<T, F> _, $Res Function(Result<T, F>) __);
}


/// Adds pattern-matching-related methods to [Result].
extension ResultPatterns<T,F extends Failure> on Result<T, F> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResultSuccess<T, F> value)?  success,TResult Function( ResultFailure<T, F> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResultSuccess() when success != null:
return success(_that);case ResultFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResultSuccess<T, F> value)  success,required TResult Function( ResultFailure<T, F> value)  failure,}){
final _that = this;
switch (_that) {
case ResultSuccess():
return success(_that);case ResultFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResultSuccess<T, F> value)?  success,TResult? Function( ResultFailure<T, F> value)?  failure,}){
final _that = this;
switch (_that) {
case ResultSuccess() when success != null:
return success(_that);case ResultFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T value)?  success,TResult Function( F failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResultSuccess() when success != null:
return success(_that.value);case ResultFailure() when failure != null:
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T value)  success,required TResult Function( F failure)  failure,}) {final _that = this;
switch (_that) {
case ResultSuccess():
return success(_that.value);case ResultFailure():
return failure(_that.failure);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T value)?  success,TResult? Function( F failure)?  failure,}) {final _that = this;
switch (_that) {
case ResultSuccess() when success != null:
return success(_that.value);case ResultFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class ResultSuccess<T,F extends Failure> implements Result<T, F> {
  const ResultSuccess(this.value);
  

 final  T value;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultSuccessCopyWith<T, F, ResultSuccess<T, F>> get copyWith => _$ResultSuccessCopyWithImpl<T, F, ResultSuccess<T, F>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultSuccess<T, F>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'Result<$T, $F>.success(value: $value)';
}


}

/// @nodoc
abstract mixin class $ResultSuccessCopyWith<T,F extends Failure,$Res> implements $ResultCopyWith<T, F, $Res> {
  factory $ResultSuccessCopyWith(ResultSuccess<T, F> value, $Res Function(ResultSuccess<T, F>) _then) = _$ResultSuccessCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class _$ResultSuccessCopyWithImpl<T,F extends Failure,$Res>
    implements $ResultSuccessCopyWith<T, F, $Res> {
  _$ResultSuccessCopyWithImpl(this._self, this._then);

  final ResultSuccess<T, F> _self;
  final $Res Function(ResultSuccess<T, F>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(ResultSuccess<T, F>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ResultFailure<T,F extends Failure> implements Result<T, F> {
  const ResultFailure(this.failure);
  

 final  F failure;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultFailureCopyWith<T, F, ResultFailure<T, F>> get copyWith => _$ResultFailureCopyWithImpl<T, F, ResultFailure<T, F>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultFailure<T, F>&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failure));

@override
String toString() {
  return 'Result<$T, $F>.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ResultFailureCopyWith<T,F extends Failure,$Res> implements $ResultCopyWith<T, F, $Res> {
  factory $ResultFailureCopyWith(ResultFailure<T, F> value, $Res Function(ResultFailure<T, F>) _then) = _$ResultFailureCopyWithImpl;
@useResult
$Res call({
 F failure
});




}
/// @nodoc
class _$ResultFailureCopyWithImpl<T,F extends Failure,$Res>
    implements $ResultFailureCopyWith<T, F, $Res> {
  _$ResultFailureCopyWithImpl(this._self, this._then);

  final ResultFailure<T, F> _self;
  final $Res Function(ResultFailure<T, F>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(ResultFailure<T, F>(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as F,
  ));
}


}

// dart format on
