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
          shadowColor: lightGrey.withOpacity(0.2),
        ),
        body: Padding(
          padding: const EdgeInsets.all(largePadding),
          child: Column(
            children: [
              Row(
                children: [
                  //profile picture rounded
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Text("RI",
                          style: customTextSTyle(24, black, FontWeight.w700)),
                    ),
                  ),
                  const SizedBox(width: regularPadding),
                  // name and email
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Rija Tata Ihtada",
                            style: customTextSTyle(16, black, FontWeight.w600)),
                        Text("rija.tata.ihtada@profest.com",
                            style: customTextSTyle(14, grey, FontWeight.w400)),
                      ],
                    ),
                  ),
                  // edit button
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(regularPadding),
                      decoration: BoxDecoration(
                        color: lightYellow,
                        borderRadius: BorderRadius.circular(regularRounded),
                      ),
                      child: const Icon(Icons.edit, color: yellow),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: mediumPadding),
              // button with shadow
              GestureDetector(
                onTap: () {
                Get.toNamed("/login");
                },
                child: Container(
                    padding: const EdgeInsets.all(regularPadding),
                    width: Get.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(regularRounded),
                      boxShadow: [buttonShadow],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text("Keluar",
                                style: customTextSTyle(
                                    16, black, FontWeight.w600))),
                        const Icon(Icons.logout, color: Colors.red),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
