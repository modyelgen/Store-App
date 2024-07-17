import 'dart:convert';

import 'package:app_1/store_app/helper/api.dart';
import 'package:http/http.dart'as http;
class AllCategories
{
  Future<List<dynamic>> getCategories()async{

    List<dynamic> data=await Api().get(ulr: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}