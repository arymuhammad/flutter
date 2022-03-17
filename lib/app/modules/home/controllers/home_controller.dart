import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_apps/app/data/provider.dart';
import 'package:http/http.dart' as http;
import 'package:my_apps/app/modules/home/views/home_view.dart';
import 'package:my_apps/app/modules/setting/views/setting_view.dart';

import '../../../models/brand.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  int selectedNavbar = 0;
  var isLoading = true.obs;
  var brandList = <Brand>[].obs;
  var isConnected = true.obs;

  void changeSelectedNavBar(int index) {
    selectedNavbar = index;
    update();
  }

  @override
  void onInit() {
    fetchBrands();
    super.onInit();
  }

  void fetchBrands() async {
    try {
      // final response =
      //     await InternetAddress.lookup('kindacode.com');
      // if (response.isNotEmpty  && response[0].rawAddress.isNotEmpty) {
      //   isConnected.value = true;
        isLoading(true);
        var brand = await Provider.fetchBrands();
        if (brand != null) {
          brandList.value = brand;
        }
      // }
    }finally{
    //  on SocketException catch (err) {
      isLoading(false);
      // isConnected.value = false;
      // print(err);
    }
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  var count = 0.obs;

  increment() {
    count.value++;
  }

  decrement() {
    count.value--;
  }
}
