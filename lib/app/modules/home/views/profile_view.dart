import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/modules/home/controllers/profile_controller.dart';
import 'package:trashure/constant.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text('Profilku',
            style: customTextSTyle(18, black, FontWeight.w700)),
        centerTitle: true,
        backgroundColor: white,
        elevation: 1,
      ),
      body: Center(
        child: Text(
          'ProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
