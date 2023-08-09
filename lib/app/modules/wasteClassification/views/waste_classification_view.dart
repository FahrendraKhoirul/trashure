import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/constant.dart';

import '../controllers/waste_classification_controller.dart';

class WasteClassificationView extends GetView<WasteClassificationController> {
  const WasteClassificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
            title: Text('Hasil Klasifikasi',
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
            padding: const EdgeInsets.all(largePadding),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.memory(
                    Get.arguments,
                    fit: BoxFit.cover,
                    height: 250,
                  ),
                ),
                const SizedBox(height: mediumPadding),
                // rounded container
                Container(
                    width: Get.width,
                    padding: const EdgeInsets.all(regularPadding),
                    decoration: BoxDecoration(
                      color: lightYellow,
                      borderRadius: BorderRadius.circular(regularRounded),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Hasil Klasifikasi",
                          style: customTextSTyle(14, black, FontWeight.w400),
                        ),
                        const SizedBox(height: smallPadding),
                        Text(
                          "Plastik PET",
                          style: customTextSTyle(14, black, FontWeight.w700),
                        ),
                      ],
                    )),
                const SizedBox(height: mediumPadding),
                Container(
                  width: Get.width,
                  child: Text(
                    "Polietilena tereftalat (PET) adalah polimer termoplastik serbaguna yang termasuk dalam kelompok polimer poliester.Resin poliester sendiri dikenal dengan beberapa sifat unggulnya dalam segi mekanis, termal, dan juga resisten terhadap zat kimia.",
                    style: customTextSTyle(14, black, FontWeight.w400),
                  ),
                ),
                const SizedBox(height: mediumPadding),
                // Text("Rekomendasi Pengelolaan",
                //     style: customTextSTyle(14, black, FontWeight.w700)),
                // const SizedBox(height: smallPadding),
              ],
            ),
          ),
        ));
  }
}
