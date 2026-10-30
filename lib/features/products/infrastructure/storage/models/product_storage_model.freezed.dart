// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_storage_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductStorageModel {

 int get id; String get title; String get description; String get category; double get price; double get rating; int get stock; String get brand; String get thumbnail;
/// Create a copy of ProductStorageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStorageModelCopyWith<ProductStorageModel> get copyWith => _$ProductStorageModelCopyWithImpl<ProductStorageModel>(this as ProductStorageModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductStorageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,category,price,rating,stock,brand,thumbnail);

@override
String toString() {
  return 'ProductStorageModel(id: $id, title: $title, description: $description, category: $category, price: $price, rating: $rating, stock: $stock, brand: $brand, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class $ProductStorageModelCopyWith<$Res>  {
  factory $ProductStorageModelCopyWith(ProductStorageModel value, $Res Function(ProductStorageModel) _then) = _$ProductStorageModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String category, double price, double rating, int stock, String brand, String thumbnail
});




}
/// @nodoc
class _$ProductStorageModelCopyWithImpl<$Res>
    implements $ProductStorageModelCopyWith<$Res> {
  _$ProductStorageModelCopyWithImpl(this._self, this._then);

  final ProductStorageModel _self;
  final $Res Function(ProductStorageModel) _then;

/// Create a copy of ProductStorageModel
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


/// Adds pattern-matching-related methods to [ProductStorageModel].
extension ProductStorageModelPatterns on ProductStorageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductStorageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductStorageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductStorageModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductStorageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductStorageModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductStorageModel() when $default != null:
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
case _ProductStorageModel() when $default != null:
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
case _ProductStorageModel():
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
case _ProductStorageModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.category,_that.price,_that.rating,_that.stock,_that.brand,_that.thumbnail);case _:
  return null;

}
}

}

/// @nodoc


class _ProductStorageModel extends ProductStorageModel {
  const _ProductStorageModel({required this.id, required this.title, required this.description, required this.category, required this.price, required this.rating, required this.stock, required this.brand, required this.thumbnail}): super._();
  

@override final  int id;
@override final  String title;
@override final  String description;
@override final  String category;
@override final  double price;
@override final  double rating;
@override final  int stock;
@override final  String brand;
@override final  String thumbnail;

/// Create a copy of ProductStorageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStorageModelCopyWith<_ProductStorageModel> get copyWith => __$ProductStorageModelCopyWithImpl<_ProductStorageModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductStorageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.price, price) || other.price == price)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,category,price,rating,stock,brand,thumbnail);

@override
String toString() {
  return 'ProductStorageModel(id: $id, title: $title, description: $description, category: $category, price: $price, rating: $rating, stock: $stock, brand: $brand, thumbnail: $thumbnail)';
}


}

/// @nodoc
abstract mixin class _$ProductStorageModelCopyWith<$Res> implements $ProductStorageModelCopyWith<$Res> {
  factory _$ProductStorageModelCopyWith(_ProductStorageModel value, $Res Function(_ProductStorageModel) _then) = __$ProductStorageModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String category, double price, double rating, int stock, String brand, String thumbnail
});




}
/// @nodoc
class __$ProductStorageModelCopyWithImpl<$Res>
    implements _$ProductStorageModelCopyWith<$Res> {
  __$ProductStorageModelCopyWithImpl(this._self, this._then);

  final _ProductStorageModel _self;
  final $Res Function(_ProductStorageModel) _then;

/// Create a copy of ProductStorageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? category = null,Object? price = null,Object? rating = null,Object? stock = null,Object? brand = null,Object? thumbnail = null,}) {
  return _then(_ProductStorageModel(
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
