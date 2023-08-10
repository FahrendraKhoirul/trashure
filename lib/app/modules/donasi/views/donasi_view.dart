import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/card_donasi.dart';
import 'package:trashure/app/global_widgets/card_header.dart';
import 'package:trashure/constant.dart';

import '../controllers/donasi_controller.dart';

class DonasiView extends GetView<DonasiController> {
  const DonasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: customAppBar("Donasi"),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: largePadding, vertical: smallPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cardHeader(
                        "assets/icons/icon_donasi.png",
                        "Mau berdonasi?",
                        "Donasikan barang bekasmu yang masih layak digunakan, banyak diluar sana yang membutuhkan.",
                        "Buat Donasi", () {
                      Get.toNamed("/donasi/add-donasi");
                    }),
                    const SizedBox(height: largePadding),
                    Text(
                      "Donasi yang tersedia",
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
                            child: cardDonasi(
                                "https://jualbelilaptop.id/wp-content/uploads/2020/08/unnamed-47.jpg",
                                "Sofa Bekas",
                                "9 November 2022",
                                "Lowokwaru, Malang"),
                            onTap: () {
                              Get.toNamed("/donasi/detail-donasi");
                            },
                          );
                        })
                  ])),
        ));
  }
}
