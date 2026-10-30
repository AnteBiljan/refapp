// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsRepositoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsRepositoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsRepositoryEvent()';
}


}

/// @nodoc
class $ProductsRepositoryEventCopyWith<$Res>  {
$ProductsRepositoryEventCopyWith(ProductsRepositoryEvent _, $Res Function(ProductsRepositoryEvent) __);
}


/// Adds pattern-matching-related methods to [ProductsRepositoryEvent].
extension ProductsRepositoryEventPatterns on ProductsRepositoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductsLoadedEvent value)?  loaded,TResult Function( ProductsEmptyEvent value)?  empty,TResult Function( ProductsNotLoadedEvent value)?  notLoaded,TResult Function( ProductsUnexpectedEvent value)?  unexpected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductsLoadedEvent() when loaded != null:
return loaded(_that);case ProductsEmptyEvent() when empty != null:
return empty(_that);case ProductsNotLoadedEvent() when notLoaded != null:
return notLoaded(_that);case ProductsUnexpectedEvent() when unexpected != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductsLoadedEvent value)  loaded,required TResult Function( ProductsEmptyEvent value)  empty,required TResult Function( ProductsNotLoadedEvent value)  notLoaded,required TResult Function( ProductsUnexpectedEvent value)  unexpected,}){
final _that = this;
switch (_that) {
case ProductsLoadedEvent():
return loaded(_that);case ProductsEmptyEvent():
return empty(_that);case ProductsNotLoadedEvent():
return notLoaded(_that);case ProductsUnexpectedEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductsLoadedEvent value)?  loaded,TResult? Function( ProductsEmptyEvent value)?  empty,TResult? Function( ProductsNotLoadedEvent value)?  notLoaded,TResult? Function( ProductsUnexpectedEvent value)?  unexpected,}){
final _that = this;
switch (_that) {
case ProductsLoadedEvent() when loaded != null:
return loaded(_that);case ProductsEmptyEvent() when empty != null:
return empty(_that);case ProductsNotLoadedEvent() when notLoaded != null:
return notLoaded(_that);case ProductsUnexpectedEvent() when unexpected != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Product> products)?  loaded,TResult Function()?  empty,TResult Function()?  notLoaded,TResult Function()?  unexpected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductsLoadedEvent() when loaded != null:
return loaded(_that.products);case ProductsEmptyEvent() when empty != null:
return empty();case ProductsNotLoadedEvent() when notLoaded != null:
return notLoaded();case ProductsUnexpectedEvent() when unexpected != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Product> products)  loaded,required TResult Function()  empty,required TResult Function()  notLoaded,required TResult Function()  unexpected,}) {final _that = this;
switch (_that) {
case ProductsLoadedEvent():
return loaded(_that.products);case ProductsEmptyEvent():
return empty();case ProductsNotLoadedEvent():
return notLoaded();case ProductsUnexpectedEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Product> products)?  loaded,TResult? Function()?  empty,TResult? Function()?  notLoaded,TResult? Function()?  unexpected,}) {final _that = this;
switch (_that) {
case ProductsLoadedEvent() when loaded != null:
return loaded(_that.products);case ProductsEmptyEvent() when empty != null:
return empty();case ProductsNotLoadedEvent() when notLoaded != null:
return notLoaded();case ProductsUnexpectedEvent() when unexpected != null:
return unexpected();case _:
  return null;

}
}

}

/// @nodoc


class ProductsLoadedEvent implements ProductsRepositoryEvent {
  const ProductsLoadedEvent(final  List<Product> products): _products = products;
  

 final  List<Product> _products;
 List<Product> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of ProductsRepositoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsLoadedEventCopyWith<ProductsLoadedEvent> get copyWith => _$ProductsLoadedEventCopyWithImpl<ProductsLoadedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoadedEvent&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductsRepositoryEvent.loaded(products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductsLoadedEventCopyWith<$Res> implements $ProductsRepositoryEventCopyWith<$Res> {
  factory $ProductsLoadedEventCopyWith(ProductsLoadedEvent value, $Res Function(ProductsLoadedEvent) _then) = _$ProductsLoadedEventCopyWithImpl;
@useResult
$Res call({
 List<Product> products
});




}
/// @nodoc
class _$ProductsLoadedEventCopyWithImpl<$Res>
    implements $ProductsLoadedEventCopyWith<$Res> {
  _$ProductsLoadedEventCopyWithImpl(this._self, this._then);

  final ProductsLoadedEvent _self;
  final $Res Function(ProductsLoadedEvent) _then;

/// Create a copy of ProductsRepositoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,}) {
  return _then(ProductsLoadedEvent(
null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<Product>,
  ));
}


}

/// @nodoc


class ProductsEmptyEvent implements ProductsRepositoryEvent {
  const ProductsEmptyEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsEmptyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsRepositoryEvent.empty()';
}


}




/// @nodoc


class ProductsNotLoadedEvent implements ProductsRepositoryEvent {
  const ProductsNotLoadedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsNotLoadedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsRepositoryEvent.notLoaded()';
}


}




/// @nodoc


class ProductsUnexpectedEvent implements ProductsRepositoryEvent {
  const ProductsUnexpectedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsUnexpectedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsRepositoryEvent.unexpected()';
}


}




// dart format on
