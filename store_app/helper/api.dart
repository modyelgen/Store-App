import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;
class Api{
  Future<dynamic> get({required String ulr}) async {
    http.Response response= await http.get(Uri.parse(ulr));
    if(response.statusCode==200){
      return jsonDecode(response.body);
    }
    else{
      throw Exception('there is problem with status code ${response.statusCode}');
    }
  }
  Future<dynamic> post({required String url,@required dynamic body})async{
    http.Response response =await http.post(Uri.parse(url),body: body);
    if(response.statusCode ==200)
    {
      Map<String,dynamic> data=jsonDecode(response.body);
      return data;
    }
    else{
      throw Exception('there is problem with status code ${response.statusCode}');
    }
  }
  Future<dynamic> put({required String url,@required dynamic body})async{
    Map<String,String> header={};
    header.addAll({'Content-Type':'application/x-www-form-urlencoded'});
    http.Response response =await http.put(Uri.parse(url),body: body,headers: header);
    if(response.statusCode ==200)
    {
      Map<String,dynamic> data=jsonDecode(response.body);
      return data;
    }
    else{
      throw Exception('there is problem with status code ${response.statusCode}');
    }
  }
}