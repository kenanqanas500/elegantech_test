import 'package:flutter_application_1/app/features/products/model/product_model.dart';
import 'package:flutter_application_1/core/api/api_client.dart';
import 'package:flutter_application_1/core/api/endpoints.dart';

class ProductsRepo {
  Future<List<ProductModel>> getAllProducts() async {
    final res = await ApiClient.getDio().get(EndPoints.allProducts);
    return List.from(res.data['data']['data'].map((productJson) => ProductModel.fromJson(productJson)));
  }
}
