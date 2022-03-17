import 'package:get/get.dart';

import '../../../data/provider.dart';
import '../../../models/product.dart';

class MainpageController extends GetxController {
   var isLoading = false.obs;
  var productList = <Product>[].obs;
  var isFavorite = false.obs;
  final count = 0.obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

   void fetchProducts() async {
    try {
      isLoading(true);
      var products = await Provider.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
