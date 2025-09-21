import 'package:get/get.dart';

import '../controllers/paket_internet_controller.dart';

class PaketInternetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaketInternetController>(
      () => PaketInternetController(),
    );
  }
}
