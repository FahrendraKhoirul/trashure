import 'package:get/get.dart';

import '../controllers/detail_donasi_controller.dart';

class DetailDonasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailDonasiController>(
      () => DetailDonasiController(),
    );
  }
}
