// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductFailure {

 String get message;
/// Create a copy of ProductFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFailureCopyWith<ProductFailure> get copyWith => _$ProductFailureCopyWithImpl<ProductFailure>(this as ProductFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductFailureCopyWith<$Res>  {
  factory $ProductFailureCopyWith(ProductFailure value, $Res Function(ProductFailure) _then) = _$ProductFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProductFailureCopyWithImpl<$Res>
    implements $ProductFailureCopyWith<$Res> {
  _$ProductFailureCopyWithImpl(this._self, this._then);

  final ProductFailure _self;
  final $Res Function(ProductFailure) _then;

/// Create a copy of ProductFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductFailure].
extension ProductFailurePatterns on ProductFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductFailureUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductFailureUnexpected() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductFailureUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case ProductFailureUnexpected():
return unexpected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductFailureUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case ProductFailureUnexpected() when unexpected != null:
return unexpected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductFailureUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  unexpected,}) {final _that = this;
switch (_that) {
case ProductFailureUnexpected():
return unexpected(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  unexpected,}) {final _that = this;
switch (_that) {
case ProductFailureUnexpected() when unexpected != null:
return unexpected(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ProductFailureUnexpected extends ProductFailure {
  const ProductFailureUnexpected(this.message): super._();
  

@override final  String message;

/// Create a copy of ProductFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductFailureUnexpectedCopyWith<ProductFailureUnexpected> get copyWith => _$ProductFailureUnexpectedCopyWithImpl<ProductFailureUnexpected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductFailureUnexpected&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductFailureUnexpectedCopyWith<$Res> implements $ProductFailureCopyWith<$Res> {
  factory $ProductFailureUnexpectedCopyWith(ProductFailureUnexpected value, $Res Function(ProductFailureUnexpected) _then) = _$ProductFailureUnexpectedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProductFailureUnexpectedCopyWithImpl<$Res>
    implements $ProductFailureUnexpectedCopyWith<$Res> {
  _$ProductFailureUnexpectedCopyWithImpl(this._self, this._then);

  final ProductFailureUnexpected _self;
  final $Res Function(ProductFailureUnexpected) _then;

/// Create a copy of ProductFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProductFailureUnexpected(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
