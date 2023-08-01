import 'package:get/get.dart';

import 'package:trashure/app/modules/home/controllers/navbar_controller.dart';
import 'package:trashure/app/modules/home/controllers/profile_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<NavbarController>(
      () => NavbarController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
