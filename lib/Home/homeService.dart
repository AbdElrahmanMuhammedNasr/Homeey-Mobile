import 'package:hommey/Models/Product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeService {
  List<Product> getProduct() {
    final List<Product> allProductList = [];
    String url = 'https://hommey-b9aa6.firebaseio.com/products.json';
    http.get(url).then((http.Response response) {
      final Map<String, dynamic> productsList = json.decode(response.body);
      print('------------>$productsList');
      productsList.forEach((String priductId, dynamic productData) {
              print('------------>$productData');

        final Product product = Product(
            id: priductId,
            image: productData['image'],
            name: productData['name'],
            price: productData['price'],
            ingredients: productData['inger'],
            describe: productData['dis'],
            availableNow: productData['ava']);
        allProductList.add(product);
      });
    });

    print('the list is $allProductList');
    return allProductList;
  }
}
