// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StorageFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StorageFailure()';
}


}

/// @nodoc
class $StorageFailureCopyWith<$Res>  {
$StorageFailureCopyWith(StorageFailure _, $Res Function(StorageFailure) __);
}


/// Adds pattern-matching-related methods to [StorageFailure].
extension StorageFailurePatterns on StorageFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StorageFailureNotLoaded value)?  notLoaded,TResult Function( StorageFailureEmpty value)?  empty,TResult Function( StorageFailureAlreadyExist value)?  alreadyExist,TResult Function( StorageFailureUnexpected value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StorageFailureNotLoaded() when notLoaded != null:
return notLoaded(_that);case StorageFailureEmpty() when empty != null:
return empty(_that);case StorageFailureAlreadyExist() when alreadyExist != null:
return alreadyExist(_that);case StorageFailureUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StorageFailureNotLoaded value)  notLoaded,required TResult Function( StorageFailureEmpty value)  empty,required TResult Function( StorageFailureAlreadyExist value)  alreadyExist,required TResult Function( StorageFailureUnexpected value)  unexpected,}){
final _that = this;
switch (_that) {
case StorageFailureNotLoaded():
return notLoaded(_that);case StorageFailureEmpty():
return empty(_that);case StorageFailureAlreadyExist():
return alreadyExist(_that);case StorageFailureUnexpected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StorageFailureNotLoaded value)?  notLoaded,TResult? Function( StorageFailureEmpty value)?  empty,TResult? Function( StorageFailureAlreadyExist value)?  alreadyExist,TResult? Function( StorageFailureUnexpected value)?  unexpected,}){
final _that = this;
switch (_that) {
case StorageFailureNotLoaded() when notLoaded != null:
return notLoaded(_that);case StorageFailureEmpty() when empty != null:
return empty(_that);case StorageFailureAlreadyExist() when alreadyExist != null:
return alreadyExist(_that);case StorageFailureUnexpected() when unexpected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  notLoaded,TResult Function()?  empty,TResult Function()?  alreadyExist,TResult Function()?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StorageFailureNotLoaded() when notLoaded != null:
return notLoaded();case StorageFailureEmpty() when empty != null:
return empty();case StorageFailureAlreadyExist() when alreadyExist != null:
return alreadyExist();case StorageFailureUnexpected() when unexpected != null:
return unexpected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  notLoaded,required TResult Function()  empty,required TResult Function()  alreadyExist,required TResult Function()  unexpected,}) {final _that = this;
switch (_that) {
case StorageFailureNotLoaded():
return notLoaded();case StorageFailureEmpty():
return empty();case StorageFailureAlreadyExist():
return alreadyExist();case StorageFailureUnexpected():
return unexpected();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  notLoaded,TResult? Function()?  empty,TResult? Function()?  alreadyExist,TResult? Function()?  unexpected,}) {final _that = this;
switch (_that) {
case StorageFailureNotLoaded() when notLoaded != null:
return notLoaded();case StorageFailureEmpty() when empty != null:
return empty();case StorageFailureAlreadyExist() when alreadyExist != null:
return alreadyExist();case StorageFailureUnexpected() when unexpected != null:
return unexpected();case _:
  return null;

}
}

}

/// @nodoc


class StorageFailureNotLoaded extends StorageFailure {
  const StorageFailureNotLoaded(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageFailureNotLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StorageFailure.notLoaded()';
}


}




/// @nodoc


class StorageFailureEmpty extends StorageFailure {
  const StorageFailureEmpty(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageFailureEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StorageFailure.empty()';
}


}




/// @nodoc


class StorageFailureAlreadyExist extends StorageFailure {
  const StorageFailureAlreadyExist(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageFailureAlreadyExist);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StorageFailure.alreadyExist()';
}


}




/// @nodoc


class StorageFailureUnexpected extends StorageFailure {
  const StorageFailureUnexpected(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StorageFailureUnexpected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StorageFailure.unexpected()';
}


}




// dart format on
