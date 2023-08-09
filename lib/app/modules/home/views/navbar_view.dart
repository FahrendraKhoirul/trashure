import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trashure/app/modules/home/controllers/navbar_controller.dart';
import 'package:trashure/constant.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screens[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: white,
          elevation: 2,
          iconSize: 30,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(color: yellow),
          selectedLabelStyle: customTextSTyle(14, yellow, FontWeight.normal),
          unselectedIconTheme: IconThemeData(color: lightGrey),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
              ),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            controller.changePage(index);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getImage();
        },
        backgroundColor: yellow,
        child: const Icon(Icons.camera_alt_outlined, color: black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
