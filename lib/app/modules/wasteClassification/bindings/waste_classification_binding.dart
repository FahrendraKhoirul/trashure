import 'package:get/get.dart';

import '../controllers/waste_classification_controller.dart';

class WasteClassificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WasteClassificationController>(
      () => WasteClassificationController(),
    );
  }
}
