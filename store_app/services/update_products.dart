import 'package:app_1/store_app/helper/api.dart';
import 'package:app_1/store_app/model/all_product_model.dart';
class UpdateProduct{
  Future<ProductModel>updateProducts({
    required String title,
    required String image,
    required String price,
    required String desc,
    required String category
  })async{
    List<dynamic> data=await Api().put(url: 'https://fakestoreapi.com/products', body: {
      'title':title,
      'price':price,
      'description':desc,
      'image':image,
      'category':category,
    });
    return ProductModel.formJson(data);
  }
}