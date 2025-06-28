import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/features/products/cubit/all_products_cubit.dart';
import 'package:flutter_application_1/app/features/products/view/widgets/products_list.dart';
import 'package:flutter_application_1/app/global/loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({super.key});
  static const routeName = 'productsView';

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  void initState() {
    context.read<AllProductsCubit>().getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: BlocBuilder<AllProductsCubit, AllProductsState>(builder: (context, state) {
          if (state is AllProductsLoading) {
            return LoadingWidget();
          } else if (state is AllProductsLoaded) {
            return ProductListView(products: state.productsList);
          } else {
            return SizedBox();
          }
        }),
      ),
    );
  }
}
