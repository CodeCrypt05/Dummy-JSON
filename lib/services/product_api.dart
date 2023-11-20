import 'dart:convert';

import 'package:dummy_json/services/api_key.dart';
import 'package:http/http.dart' as http;

import 'package:dummy_json/model/products/product.dart';

List<Product> productList = [];
// int limit = 10;

Future<List<Product>> getProductsData(int limit) async {
  final response = await http.get(Uri.parse('$url/products?limit=$limit'));
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    List<dynamic> productListData = data['products'];
    for (Map i in productListData) {
      Product product = Product(
        title: i['title'],
        description: i['description'],
        price: i['price'],
        brand: i['brand'],
      );
      productList.add(product);
    }
    return productList;
  } else {
    throw Exception('Something went wrong');
  }
}
