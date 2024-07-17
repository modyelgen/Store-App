import 'package:app_1/store_app/helper/api.dart';
import 'package:app_1/store_app/model/all_product_model.dart';
class GetProductByCategories {
  Future<List<ProductModel>> getAllProducts(String categoryName) async
  {
    List<dynamic> data = await Api().get(ulr: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel>productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.formJson(data[i]));
    }
    return productList;
  }
}