// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_collection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCollectionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCollectionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductCollectionState()';
}


}

/// @nodoc
class $ProductCollectionStateCopyWith<$Res>  {
$ProductCollectionStateCopyWith(ProductCollectionState _, $Res Function(ProductCollectionState) __);
}


/// Adds pattern-matching-related methods to [ProductCollectionState].
extension ProductCollectionStatePatterns on ProductCollectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductCollectionInitial value)?  initial,TResult Function( ProductCollectionLoading value)?  loading,TResult Function( ProductCollectionEmpty value)?  empty,TResult Function( ProductCollectionLoaded value)?  loaded,TResult Function( ProductCollectionFailed value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductCollectionInitial() when initial != null:
return initial(_that);case ProductCollectionLoading() when loading != null:
return loading(_that);case ProductCollectionEmpty() when empty != null:
return empty(_that);case ProductCollectionLoaded() when loaded != null:
return loaded(_that);case ProductCollectionFailed() when failed != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductCollectionInitial value)  initial,required TResult Function( ProductCollectionLoading value)  loading,required TResult Function( ProductCollectionEmpty value)  empty,required TResult Function( ProductCollectionLoaded value)  loaded,required TResult Function( ProductCollectionFailed value)  failed,}){
final _that = this;
switch (_that) {
case ProductCollectionInitial():
return initial(_that);case ProductCollectionLoading():
return loading(_that);case ProductCollectionEmpty():
return empty(_that);case ProductCollectionLoaded():
return loaded(_that);case ProductCollectionFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductCollectionInitial value)?  initial,TResult? Function( ProductCollectionLoading value)?  loading,TResult? Function( ProductCollectionEmpty value)?  empty,TResult? Function( ProductCollectionLoaded value)?  loaded,TResult? Function( ProductCollectionFailed value)?  failed,}){
final _that = this;
switch (_that) {
case ProductCollectionInitial() when initial != null:
return initial(_that);case ProductCollectionLoading() when loading != null:
return loading(_that);case ProductCollectionEmpty() when empty != null:
return empty(_that);case ProductCollectionLoaded() when loaded != null:
return loaded(_that);case ProductCollectionFailed() when failed != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  empty,TResult Function( List<ProductViewModel> products,  bool hasMore,  bool isLoadingMore,  String? loadMoreError,  String? refreshError)?  loaded,TResult Function( String message)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductCollectionInitial() when initial != null:
return initial();case ProductCollectionLoading() when loading != null:
return loading();case ProductCollectionEmpty() when empty != null:
return empty();case ProductCollectionLoaded() when loaded != null:
return loaded(_that.products,_that.hasMore,_that.isLoadingMore,_that.loadMoreError,_that.refreshError);case ProductCollectionFailed() when failed != null:
return failed(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  empty,required TResult Function( List<ProductViewModel> products,  bool hasMore,  bool isLoadingMore,  String? loadMoreError,  String? refreshError)  loaded,required TResult Function( String message)  failed,}) {final _that = this;
switch (_that) {
case ProductCollectionInitial():
return initial();case ProductCollectionLoading():
return loading();case ProductCollectionEmpty():
return empty();case ProductCollectionLoaded():
return loaded(_that.products,_that.hasMore,_that.isLoadingMore,_that.loadMoreError,_that.refreshError);case ProductCollectionFailed():
return failed(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  empty,TResult? Function( List<ProductViewModel> products,  bool hasMore,  bool isLoadingMore,  String? loadMoreError,  String? refreshError)?  loaded,TResult? Function( String message)?  failed,}) {final _that = this;
switch (_that) {
case ProductCollectionInitial() when initial != null:
return initial();case ProductCollectionLoading() when loading != null:
return loading();case ProductCollectionEmpty() when empty != null:
return empty();case ProductCollectionLoaded() when loaded != null:
return loaded(_that.products,_that.hasMore,_that.isLoadingMore,_that.loadMoreError,_that.refreshError);case ProductCollectionFailed() when failed != null:
return failed(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ProductCollectionInitial implements ProductCollectionState {
  const ProductCollectionInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCollectionInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductCollectionState.initial()';
}


}




/// @nodoc


class ProductCollectionLoading implements ProductCollectionState {
  const ProductCollectionLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCollectionLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductCollectionState.loading()';
}


}




/// @nodoc


class ProductCollectionEmpty implements ProductCollectionState {
  const ProductCollectionEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCollectionEmpty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductCollectionState.empty()';
}


}




/// @nodoc


class ProductCollectionLoaded implements ProductCollectionState {
  const ProductCollectionLoaded({required final  List<ProductViewModel> products, required this.hasMore, required this.isLoadingMore, this.loadMoreError, this.refreshError}): _products = products;
  

 final  List<ProductViewModel> _products;
 List<ProductViewModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

 final  bool hasMore;
 final  bool isLoadingMore;
 final  String? loadMoreError;
 final  String? refreshError;

/// Create a copy of ProductCollectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCollectionLoadedCopyWith<ProductCollectionLoaded> get copyWith => _$ProductCollectionLoadedCopyWithImpl<ProductCollectionLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCollectionLoaded&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.loadMoreError, loadMoreError) || other.loadMoreError == loadMoreError)&&(identical(other.refreshError, refreshError) || other.refreshError == refreshError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_products),hasMore,isLoadingMore,loadMoreError,refreshError);

@override
String toString() {
  return 'ProductCollectionState.loaded(products: $products, hasMore: $hasMore, isLoadingMore: $isLoadingMore, loadMoreError: $loadMoreError, refreshError: $refreshError)';
}


}

/// @nodoc
abstract mixin class $ProductCollectionLoadedCopyWith<$Res> implements $ProductCollectionStateCopyWith<$Res> {
  factory $ProductCollectionLoadedCopyWith(ProductCollectionLoaded value, $Res Function(ProductCollectionLoaded) _then) = _$ProductCollectionLoadedCopyWithImpl;
@useResult
$Res call({
 List<ProductViewModel> products, bool hasMore, bool isLoadingMore, String? loadMoreError, String? refreshError
});




}
/// @nodoc
class _$ProductCollectionLoadedCopyWithImpl<$Res>
    implements $ProductCollectionLoadedCopyWith<$Res> {
  _$ProductCollectionLoadedCopyWithImpl(this._self, this._then);

  final ProductCollectionLoaded _self;
  final $Res Function(ProductCollectionLoaded) _then;

/// Create a copy of ProductCollectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? products = null,Object? hasMore = null,Object? isLoadingMore = null,Object? loadMoreError = freezed,Object? refreshError = freezed,}) {
  return _then(ProductCollectionLoaded(
products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductViewModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,loadMoreError: freezed == loadMoreError ? _self.loadMoreError : loadMoreError // ignore: cast_nullable_to_non_nullable
as String?,refreshError: freezed == refreshError ? _self.refreshError : refreshError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ProductCollectionFailed implements ProductCollectionState {
  const ProductCollectionFailed({required this.message});
  

 final  String message;

/// Create a copy of ProductCollectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCollectionFailedCopyWith<ProductCollectionFailed> get copyWith => _$ProductCollectionFailedCopyWithImpl<ProductCollectionFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCollectionFailed&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProductCollectionState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProductCollectionFailedCopyWith<$Res> implements $ProductCollectionStateCopyWith<$Res> {
  factory $ProductCollectionFailedCopyWith(ProductCollectionFailed value, $Res Function(ProductCollectionFailed) _then) = _$ProductCollectionFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProductCollectionFailedCopyWithImpl<$Res>
    implements $ProductCollectionFailedCopyWith<$Res> {
  _$ProductCollectionFailedCopyWithImpl(this._self, this._then);

  final ProductCollectionFailed _self;
  final $Res Function(ProductCollectionFailed) _then;

/// Create a copy of ProductCollectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProductCollectionFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
