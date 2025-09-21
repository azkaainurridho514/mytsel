import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  var checkC = false.obs;

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // void increment() => count.value++;

  TextEditingController phoneC = TextEditingController();

  @override
  void onClose() {
    phoneC.dispose();
    super.onClose();
  }
}
