import 'package:get/get.dart';

import '../../../data/provider.dart';
import '../../../models/product.dart';

class DetailPageController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;


  @override
  void onInit() {
    // fetchProductsById(idProduct);
    super.onInit();
  }

  // void fetchProductsById(idProduct) async {
  //   try {
  //     isLoading(true);
  //     var products = await Provider.fetchProductsById(idProduct);
  //     if (products != null) {
  //       productList.value = products;
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }
}
