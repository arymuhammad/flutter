import 'package:get/get.dart';

class AccountController extends GetxController {
  //TODO: Implement AccountController
  int selectedRadioTile = 0;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  setSelectedRadioTile(int val) {
    selectedRadioTile = val;
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
