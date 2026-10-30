// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppThemeMode {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeMode()';
}


}

/// @nodoc
class $AppThemeModeCopyWith<$Res>  {
$AppThemeModeCopyWith(AppThemeMode _, $Res Function(AppThemeMode) __);
}


/// Adds pattern-matching-related methods to [AppThemeMode].
extension AppThemeModePatterns on AppThemeMode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppThemeLight value)?  light,TResult Function( AppThemeDark value)?  dark,TResult Function( AppThemeSystem value)?  system,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppThemeLight() when light != null:
return light(_that);case AppThemeDark() when dark != null:
return dark(_that);case AppThemeSystem() when system != null:
return system(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppThemeLight value)  light,required TResult Function( AppThemeDark value)  dark,required TResult Function( AppThemeSystem value)  system,}){
final _that = this;
switch (_that) {
case AppThemeLight():
return light(_that);case AppThemeDark():
return dark(_that);case AppThemeSystem():
return system(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppThemeLight value)?  light,TResult? Function( AppThemeDark value)?  dark,TResult? Function( AppThemeSystem value)?  system,}){
final _that = this;
switch (_that) {
case AppThemeLight() when light != null:
return light(_that);case AppThemeDark() when dark != null:
return dark(_that);case AppThemeSystem() when system != null:
return system(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  light,TResult Function()?  dark,TResult Function()?  system,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppThemeLight() when light != null:
return light();case AppThemeDark() when dark != null:
return dark();case AppThemeSystem() when system != null:
return system();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  light,required TResult Function()  dark,required TResult Function()  system,}) {final _that = this;
switch (_that) {
case AppThemeLight():
return light();case AppThemeDark():
return dark();case AppThemeSystem():
return system();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  light,TResult? Function()?  dark,TResult? Function()?  system,}) {final _that = this;
switch (_that) {
case AppThemeLight() when light != null:
return light();case AppThemeDark() when dark != null:
return dark();case AppThemeSystem() when system != null:
return system();case _:
  return null;

}
}

}

/// @nodoc


class AppThemeLight extends AppThemeMode {
  const AppThemeLight(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeLight);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeMode.light()';
}


}




/// @nodoc


class AppThemeDark extends AppThemeMode {
  const AppThemeDark(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeDark);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeMode.dark()';
}


}




/// @nodoc


class AppThemeSystem extends AppThemeMode {
  const AppThemeSystem(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppThemeSystem);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppThemeMode.system()';
}


}




// dart format on
