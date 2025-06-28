part of 'all_products_cubit.dart';

@immutable
sealed class AllProductsState {}

final class AllProductsInitial extends AllProductsState {}

final class AllProductsLoaded extends AllProductsState {
  final List<ProductModel> productsList;
  AllProductsLoaded({required this.productsList});
}

final class AllProductsError extends AllProductsState {
  final String error;
  AllProductsError({required this.error});
}

final class AllProductsLoading extends AllProductsState {}
