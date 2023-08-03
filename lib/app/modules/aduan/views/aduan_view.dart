import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/card_aduan.dart';
import 'package:trashure/app/global_widgets/card_header.dart';
import 'package:trashure/constant.dart';

import '../controllers/aduan_controller.dart';

class AduanView extends GetView<AduanController> {
  const AduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: customAppBar("Aduan"),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: largePadding, vertical: smallPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cardHeader(
                        "assets/icons/icon_aduan.png",
                        "Punya keluhan?",
                        "Kirim aduanmu perihal penimbunan sampah ilegal hingga kebutuhan infrastruktur sampah.",
                        "Buat aduan",
                        () {
                            Get.toNamed("/aduan/add-aduan");
                        }),
                    const SizedBox(height: largePadding),
                    Text(
                      "Daftar aduan",
                      style: customTextSTyle(18.0, black, FontWeight.w600),
                    ),
                    ListView.builder(
                        itemCount: 5,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        padding:
                            const EdgeInsets.symmetric(vertical: mediumPadding),
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: cardAduan(
                                "https://media.npr.org/assets/img/2012/10/28/trash2-614f006a7e1d70a7fee7c5d5a92788107dd0c8a7.jpg",
                                "20 April 2023",
                                "Klojen, Malang",
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a ligula ut metus congue commodo sit amet vel mauris.",),
                            onTap: () {
                              Get.toNamed("/aduan/detail-aduan");
                            },
                          );
                        })
                  ])),
        ));
  }
}
