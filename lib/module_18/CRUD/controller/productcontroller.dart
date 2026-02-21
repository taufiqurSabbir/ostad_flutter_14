import 'dart:convert';

import 'package:flutter_14/module_18/CRUD/utils/urls.dart';
import 'package:http/http.dart' as http;

import '../model/productModel.dart';

class ProductController{
  List<Data> products = [];


  Future<void>getProducts()async {
    final url = Uri.parse(Urls.readProduct);
    final response =await http.get(url);

    if(response.statusCode == 200){
      final jsonResponse = jsonDecode(response.body);
        ProductModel model = ProductModel.fromJson(jsonResponse);

        products = model.data ?? [];

    }
  }

  Future<bool>deleteProducts(String productId)async {
    final url = Uri.parse(Urls.deleteProduct(productId));
    final response =await http.get(url);

    if(response.statusCode == 200){
      getProducts();
      return true;
    }else{
      return false;
    }
  }

}