import 'package:get/get.dart';

import '../controllers/add_donasi_controller.dart';

class AddDonasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddDonasiController>(
      () => AddDonasiController(),
    );
  }
}
