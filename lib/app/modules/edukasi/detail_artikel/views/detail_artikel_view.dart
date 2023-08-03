import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/constant.dart';

import '../controllers/detail_artikel_controller.dart';

class DetailArtikelView extends GetView<DetailArtikelController> {
  const DetailArtikelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: customAppBar(""),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: largePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 255,
                  width: Get.height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(largeRounded),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.rd.com/wp-content/uploads/2020/03/GettyImages-1147902353-scaled.jpg?resize=700,466"),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: mediumPadding),
                Row(
                  children: [
                    Text("25 Juli 2023",
                        style: customTextSTyle(14.0, grey, FontWeight.w600)),
                    const SizedBox(width: 8),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: grey,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text("baca 3 menit",
                        style: customTextSTyle(14.0, grey, FontWeight.w600)),
                  ],
                ),
                const SizedBox(height: mediumPadding),
                Text(
                  "Cara Mudah Daur Ulang Plastik yang Ada di Rumah",
                  style: customTextSTyle(20.0, black, FontWeight.w600),
                ),
                const SizedBox(height: smallPadding),
                Row(
                  children: [
                    const Icon(Icons.person_2_outlined, color: black, size: 18),
                    const SizedBox(width: extraSmallPadding),
                    Text(
                      "Virdita Rahdianti",
                      style: customTextSTyle(14.0, black, FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(height: regularPadding),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in sem nisl. Curabitur est libero, lacinia at urna in, porta laoreet purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc dignissim nisl mi, ac ullamcorper lectus vulputate vel. Nulla facilisi. ",
                  style: customTextSTyle(14.0, black, FontWeight.w400),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ));
  }
}
