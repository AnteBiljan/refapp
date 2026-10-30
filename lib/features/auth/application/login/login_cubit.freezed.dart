// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginEditing value)?  editing,TResult Function( LoginSubmitting value)?  submitting,TResult Function( LoginSuccess value)?  success,TResult Function( LoginFailed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginEditing() when editing != null:
return editing(_that);case LoginSubmitting() when submitting != null:
return submitting(_that);case LoginSuccess() when success != null:
return success(_that);case LoginFailed() when failed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginEditing value)  editing,required TResult Function( LoginSubmitting value)  submitting,required TResult Function( LoginSuccess value)  success,required TResult Function( LoginFailed value)  failed,}){
final _that = this;
switch (_that) {
case LoginEditing():
return editing(_that);case LoginSubmitting():
return submitting(_that);case LoginSuccess():
return success(_that);case LoginFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginEditing value)?  editing,TResult? Function( LoginSubmitting value)?  submitting,TResult? Function( LoginSuccess value)?  success,TResult? Function( LoginFailed value)?  failed,}){
final _that = this;
switch (_that) {
case LoginEditing() when editing != null:
return editing(_that);case LoginSubmitting() when submitting != null:
return submitting(_that);case LoginSuccess() when success != null:
return success(_that);case LoginFailed() when failed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Username username,  Password password)?  editing,TResult Function( Username username,  Password password)?  submitting,TResult Function()?  success,TResult Function( Username username,  Password password,  String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginEditing() when editing != null:
return editing(_that.username,_that.password);case LoginSubmitting() when submitting != null:
return submitting(_that.username,_that.password);case LoginSuccess() when success != null:
return success();case LoginFailed() when failed != null:
return failed(_that.username,_that.password,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Username username,  Password password)  editing,required TResult Function( Username username,  Password password)  submitting,required TResult Function()  success,required TResult Function( Username username,  Password password,  String message)  failed,}) {final _that = this;
switch (_that) {
case LoginEditing():
return editing(_that.username,_that.password);case LoginSubmitting():
return submitting(_that.username,_that.password);case LoginSuccess():
return success();case LoginFailed():
return failed(_that.username,_that.password,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Username username,  Password password)?  editing,TResult? Function( Username username,  Password password)?  submitting,TResult? Function()?  success,TResult? Function( Username username,  Password password,  String message)?  failed,}) {final _that = this;
switch (_that) {
case LoginEditing() when editing != null:
return editing(_that.username,_that.password);case LoginSubmitting() when submitting != null:
return submitting(_that.username,_that.password);case LoginSuccess() when success != null:
return success();case LoginFailed() when failed != null:
return failed(_that.username,_that.password,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class LoginEditing implements LoginState {
  const LoginEditing({required this.username, required this.password});
  

 final  Username username;
 final  Password password;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEditingCopyWith<LoginEditing> get copyWith => _$LoginEditingCopyWithImpl<LoginEditing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEditing&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginState.editing(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginEditingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginEditingCopyWith(LoginEditing value, $Res Function(LoginEditing) _then) = _$LoginEditingCopyWithImpl;
@useResult
$Res call({
 Username username, Password password
});




}
/// @nodoc
class _$LoginEditingCopyWithImpl<$Res>
    implements $LoginEditingCopyWith<$Res> {
  _$LoginEditingCopyWithImpl(this._self, this._then);

  final LoginEditing _self;
  final $Res Function(LoginEditing) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(LoginEditing(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Username,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,
  ));
}


}

/// @nodoc


class LoginSubmitting implements LoginState {
  const LoginSubmitting({required this.username, required this.password});
  

 final  Username username;
 final  Password password;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSubmittingCopyWith<LoginSubmitting> get copyWith => _$LoginSubmittingCopyWithImpl<LoginSubmitting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSubmitting&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginState.submitting(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginSubmittingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginSubmittingCopyWith(LoginSubmitting value, $Res Function(LoginSubmitting) _then) = _$LoginSubmittingCopyWithImpl;
@useResult
$Res call({
 Username username, Password password
});




}
/// @nodoc
class _$LoginSubmittingCopyWithImpl<$Res>
    implements $LoginSubmittingCopyWith<$Res> {
  _$LoginSubmittingCopyWithImpl(this._self, this._then);

  final LoginSubmitting _self;
  final $Res Function(LoginSubmitting) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(LoginSubmitting(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Username,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,
  ));
}


}

/// @nodoc


class LoginSuccess implements LoginState {
  const LoginSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.success()';
}


}




/// @nodoc


class LoginFailed implements LoginState {
  const LoginFailed({required this.username, required this.password, required this.message});
  

 final  Username username;
 final  Password password;
 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFailedCopyWith<LoginFailed> get copyWith => _$LoginFailedCopyWithImpl<LoginFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFailed&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,username,password,message);

@override
String toString() {
  return 'LoginState.failed(username: $username, password: $password, message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginFailedCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginFailedCopyWith(LoginFailed value, $Res Function(LoginFailed) _then) = _$LoginFailedCopyWithImpl;
@useResult
$Res call({
 Username username, Password password, String message
});




}
/// @nodoc
class _$LoginFailedCopyWithImpl<$Res>
    implements $LoginFailedCopyWith<$Res> {
  _$LoginFailedCopyWithImpl(this._self, this._then);

  final LoginFailed _self;
  final $Res Function(LoginFailed) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,Object? message = null,}) {
  return _then(LoginFailed(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as Username,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as Password,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
