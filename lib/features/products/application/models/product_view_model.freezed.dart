// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductViewModel {

 int get id; String get title; String get description; String get category; double get price; double get rating; int get stock; String get brand; String get thumbnail;
/// Create a copy of ProductViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductViewModelCopyWith<ProductViewModel> get copyWith => _$ProductViewModelCopyWithImpl<ProductViewModel>(this as ProductViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,category,price,rating,stock,brand,thumbnail);

@override
String toString() {
  return 'ProductViewModel(id: $id, title: $title, description: $description, category: $category, price: $price, rating: $rating, stock: $stock, brand: $brand, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $ProductViewModelCopyWith<$Res>  {
  factory $ProductViewModelCopyWith(ProductViewModel value, $Res Function(ProductViewModel) _then) = _$ProductViewModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String category, double price, double rating, int stock, String brand, String thumbnail
});




}
/// @nodoc
class _$ProductViewModelCopyWithImpl<$Res>
    implements $ProductViewModelCopyWith<$Res> {
  _$ProductViewModelCopyWithImpl(this._self, this._then);

  final ProductViewModel _self;
  final $Res Function(ProductViewModel) _then;

/// Create a copy of ProductViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? category = null,Object? price = null,Object? rating = null,Object? stock = null,Object? brand = null,Object? thumbnail = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductViewModel].
extension ProductViewModelPatterns on ProductViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductViewModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String category,  double price,  double rating,  int stock,  String brand,  String thumbnail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductViewModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.category,_that.price,_that.rating,_that.stock,_that.brand,_that.thumbnail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String category,  double price,  double rating,  int stock,  String brand,  String thumbnail)  $default,) {final _that = this;
switch (_that) {
case _ProductViewModel():
return $default(_that.id,_that.title,_that.description,_that.category,_that.price,_that.rating,_that.stock,_that.brand,_that.thumbnail);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  String category,  double price,  double rating,  int stock,  String brand,  String thumbnail)?  $default,) {final _that = this;
switch (_that) {
case _ProductViewModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.category,_that.price,_that.rating,_that.stock,_that.brand,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc


class _ProductViewModel extends ProductViewModel {
  const _ProductViewModel({required this.id, required this.title, required this.description, required this.category, required this.price, required this.rating, required this.stock, required this.brand, required this.thumbnail}): super._();
  

@override final  int id;
@override final  String title;
@override final  String description;
@override final  String category;
@override final  double price;
@override final  double rating;
@override final  int stock;
@override final  String brand;
@override final  String thumbnail;

/// Create a copy of ProductViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductViewModelCopyWith<_ProductViewModel> get copyWith => __$ProductViewModelCopyWithImpl<_ProductViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductViewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,category,price,rating,stock,brand,thumbnail);

@override
String toString() {
  return 'ProductViewModel(id: $id, title: $title, description: $description, category: $category, price: $price, rating: $rating, stock: $stock, brand: $brand, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$ProductViewModelCopyWith<$Res> implements $ProductViewModelCopyWith<$Res> {
  factory _$ProductViewModelCopyWith(_ProductViewModel value, $Res Function(_ProductViewModel) _then) = __$ProductViewModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String category, double price, double rating, int stock, String brand, String thumbnail
});




}
/// @nodoc
class __$ProductViewModelCopyWithImpl<$Res>
    implements _$ProductViewModelCopyWith<$Res> {
  __$ProductViewModelCopyWithImpl(this._self, this._then);

  final _ProductViewModel _self;
  final $Res Function(_ProductViewModel) _then;

/// Create a copy of ProductViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? category = null,Object? price = null,Object? rating = null,Object? stock = null,Object? brand = null,Object? thumbnail = null,}) {
  return _then(_ProductViewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
