import 'package:get/get.dart';

import '../controllers/detail_edukasi_controller.dart';

class DetailEdukasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailEdukasiController>(
      () => DetailEdukasiController(),
    );
  }
}
