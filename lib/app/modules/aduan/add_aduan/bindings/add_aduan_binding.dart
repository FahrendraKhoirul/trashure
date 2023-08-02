import 'package:get/get.dart';

import '../controllers/add_aduan_controller.dart';

class AddAduanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddAduanController>(
      () => AddAduanController(),
    );
  }
}
