import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/brand.dart';
import '../models/product.dart';

class Provider extends GetConnect {
  // Get request
  // Future<Response> getUser() async {
  //   final response = await get('https://reqres.in/api/users?page=2');
  //   // print(response.body['data']);
  //   if (response.status.hasError) {
  //     return Future.error(response.statusText!);
  //   } else {
  //     return response.body['data'];
  //   }
  // }

  static var client = http.Client();

  static Future<List<Brand>> fetchBrands() async {
    var response =
        await client.get(Uri.parse('http://103.112.139.155:3500/api/v1/brand'));
    // if (response.statusCode == 200) {
    // await Future.delayed(Duration(seconds: 2));
    var jsonString = response.body;
    // print(jsonDecode(response.body));
    return brandFromJson(jsonString);
    // } else {
    //   //show error message
    //   // return null;
    // }
  }

  static Future<List<Product>> fetchProducts() async {
    var response =
        await client.get(Uri.parse('https://fakestoreapi.com/products'));
    // if (response.statusCode == 200) {
    // await Future.delayed(Duration(seconds: 2));
    var jsonString = response.body;
    // print(jsonDecode(response.body));
    return productFromJson(jsonString);
    // } else {
    //   //show error message
    //   // return null;
    // }
  }

  // static Future<List<Product>> fetchProductsById(id) async {
  //   var response =
  //       await client.get(Uri.parse('https://fakestoreapi.com/products/'+id));
  //   // if (response.statusCode == 200) {
  //   // await Future.delayed(Duration(seconds: 2));
  //   var jsonString = response.body;
  //   print(jsonDecode(response.body));
  //   return productFromJson(jsonString);
  //   // } else {
  //   //   //show error message
  //   //   // return null;
  //   // }
  // }
  // Post request
  // Future<Response> postUser(Map data) => post('http://youapi/users', body: data);
  // Post request with File
  // Future<Response<CasesModel>> postCases(List<int> image) {
  //   final form = FormData({
  //     'file': MultipartFile(image, filename: 'avatar.png'),
  //     'otherFile': MultipartFile(image, filename: 'cover.png'),
  //   });
  //   return post('http://youapi/users/upload', form);
  // }

  GetSocket userMessages() {
    return socket('https://yourapi/users/socket');
  }
}
