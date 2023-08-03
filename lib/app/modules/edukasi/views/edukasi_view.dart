import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/card_content.dart';
import 'package:trashure/app/global_widgets/card_donasi.dart';
import 'package:trashure/app/global_widgets/icon_button.dart';
import 'package:trashure/constant.dart';

import '../controllers/edukasi_controller.dart';

class EdukasiView extends GetView<EdukasiController> {
  const EdukasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
            title: Text('Edukasi',
                style: customTextSTyle(18, black, FontWeight.w700)),
            centerTitle: true,
            backgroundColor: white,
            elevation: 1,
            shadowColor: lightGrey.withOpacity(0.2),
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back, color: black),
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(largePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Jenis Jenis sampah Plastik
                Text('Jenis Jenis Plastik',
                    style: customTextSTyle(18, black, FontWeight.w700)),
                const SizedBox(height: 4),
                Text("Yuk kenali jenis jenis plastik yang ada di sekitar kita",
                    style: customTextSTyle(14, grey, FontWeight.w400)),
                const SizedBox(height: smallPadding),
                SizedBox(
                  width: Get.width,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: regularPadding,
                    runSpacing: smallPadding,
                    direction: Axis.horizontal,
                    children: [
                      customIconButton(
                          "assets/icons/icon_tipe1.png", "PET", () {}),
                      customIconButton(
                          "assets/icons/icon_tipe2.png", "HDPE", () {}),
                      customIconButton(
                          "assets/icons/icon_tipe3.png", "PVC", () {}),
                      customIconButton(
                          "assets/icons/icon_tipe4.png", "LDPE", () {}),
                      customIconButton(
                          "assets/icons/icon_tipe5.png", "PP", () {}),
                      customIconButton(
                          "assets/icons/icon_tipe6.png", "PS", () {}),
                      customIconButton(
                          "assets/icons/icon_tipe7.png", "LAINNYA", () {}),
                    ],
                  ),
                ),
                const SizedBox(height: largePadding),
                Text('Jenis Jenis Sampah',
                    style: customTextSTyle(18, black, FontWeight.w700)),
                const SizedBox(height: 4),
                Text("Ayo pelajari jenis jenis sampah",
                    style: customTextSTyle(14, grey, FontWeight.w400)),
                const SizedBox(height: smallPadding),
                cardContent(
                    onTap: () {},
                    image:
                        "https://cdn1-production-images-kly.akamaized.net/7WjCCJ6BCDMeQxVUfYh8WjOai6U=/1200x900/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2755430/original/025206600_1552987962-iStock-914826124.jpg",
                    title: "Yuk Kenali Jenis Sampah",
                    description:
                        "Salah satu solusi untuk mengatasi masalah ini adalah dengan memilih tempat sampah yang sesuai dengan jenis sampah"),
                const SizedBox(
                  height: smallPadding,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return cardDonasi(
                        "https://informatika.uin-malang.ac.id/wp-content/uploads/2020/09/opah.jpg",
                        "Cara Mudah Daur Ulang Plastik",
                        "asdasdasd",
                        "asda");
                  },
                )
              ],
            ),
          ),
        ));
  }
}
