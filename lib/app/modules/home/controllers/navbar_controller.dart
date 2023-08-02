import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trashure/app/modules/home/views/home_view.dart';
import 'package:trashure/app/modules/home/views/profile_view.dart';
import 'package:trashure/app/modules/home/views/scan_view.dart';
import 'package:trashure/constant.dart';

class NavbarController extends GetxController {
  final persistentTabController = PersistentTabController().obs;
  final List<Widget> screens = [
    HomeView(),
    ScanView(),
    ProfileView(),
  ].obs;

  final navbaritems = [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: ("Home"),
      activeColorPrimary: yellow,
      inactiveColorPrimary: grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.qr_code_scanner_rounded),
      title: ("Home"),
      activeColorPrimary: yellow,
      inactiveColorPrimary: black,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.perm_identity_rounded),
      title: ("Home"),
      activeColorPrimary: yellow,
      inactiveColorPrimary: grey,
    ),
  ].obs;

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
}
