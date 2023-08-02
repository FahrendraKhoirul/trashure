import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trashure/constant.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
    backgroundColor: white,
    elevation: 0,
    title: Text(title, style: customTextSTyle(18.0, black, FontWeight.bold)),
    centerTitle: true,
    leading: InkWell(
      onTap: () {
        Get.back();
      },
      child: const Icon(
        Icons.arrow_back,
        color: black,
      ),
    ),
  );
}
