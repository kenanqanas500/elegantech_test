import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_1/app/features/products/model/product_model.dart';
import 'package:flutter_application_1/app/features/products/repo/products_repo.dart';
import 'package:meta/meta.dart';

part 'all_products_state.dart';

class AllProductsCubit extends Cubit<AllProductsState> {
  AllProductsCubit({required this.repo}) : super(AllProductsInitial());

  final ProductsRepo repo;
  getProducts() async {
    emit(AllProductsLoading());
    try {
      await repo.getAllProducts().then((productsList) {
        emit(AllProductsLoaded(productsList: productsList));
      });
    } on DioException catch (error) {
      emit(AllProductsError(error: error.toString()));
    }
  }
}
