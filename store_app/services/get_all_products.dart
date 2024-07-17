import 'dart:convert';
import 'package:app_1/store_app/model/all_product_model.dart';
import 'package:http/http.dart'as http;
import '../helper/api.dart';
class AllProducts
{
  Future<List<ProductModel>> getAllProducts()async
  {
      List<dynamic> data= await Api().get(ulr:'https://fakestoreapi.com/products');
      List<ProductModel>productList=[];
      for(int i=0;i<data.length;i++){
        productList.add(ProductModel.formJson(data[i]));
      }
      return productList;
    }
  }
