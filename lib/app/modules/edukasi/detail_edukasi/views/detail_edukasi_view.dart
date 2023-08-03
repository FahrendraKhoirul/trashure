import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/card_label.dart';
import 'package:trashure/constant.dart';

import '../controllers/detail_edukasi_controller.dart';

class DetailEdukasiView extends GetView<DetailEdukasiController> {
  const DetailEdukasiView({Key? key}) : super(key: key);
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
                cardLabel(Icons.book_outlined, "Edukasi"),
                const SizedBox(height: mediumPadding),
                Text(
                  "PET (Polyethylene Terephthalate)",
                  style: customTextSTyle(20.0, black, FontWeight.w600),
                ),
                const SizedBox(height: regularPadding),
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
                const SizedBox(height: largePadding),
                Text(
                  "PET adalah singkatan dari Polyethylene Terephthalate, dan merupakan salah satu jenis plastik yang umum digunakan dalam berbagai produk kemasan dan wadah. Plastik PET dikenal karena sifatnya yang ringan, kuat, transparan, tahan terhadap air, serta memiliki sifat bahan yang aman untuk makanan.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In in sem nisl. Curabitur est libero, lacinia at urna in, porta laoreet purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc dignissim nisl mi, ac ullamcorper lectus vulputate vel. Nulla facilisi. ",
                  style: customTextSTyle(14.0, black, FontWeight.w400),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ));
  }
}
