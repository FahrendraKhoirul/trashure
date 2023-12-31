import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trashure/app/modules/home/views/home_view.dart';
import 'package:trashure/app/modules/home/views/profile_view.dart';
import 'package:trashure/app/modules/home/views/scan_view.dart';
import 'package:trashure/constant.dart';

class NavbarController extends GetxController {
  final currentIndex = 0.obs;
  final List<Widget> screens = [
    HomeView(),
    ProfileView(),
  ].obs;

  void changePage(int index) {
    currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      // convert to base64 string
      Image? img = null;
      final data = await pickedFile.readAsBytes();
      // await decodeImageFromList(data).then((value) => img = value as Image?);
      Get.toNamed('/waste-classification', arguments: data);
      print("Image: ${data.toString()}");
    }
  }
}
