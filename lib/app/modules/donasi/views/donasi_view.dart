import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
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
                children: [
                  cardHeader(),
                  const SizedBox(height: largePadding),
                  Text(
                    "Donasi yang tersedia",
                    style: customTextSTyle(18.0, black, FontWeight.w600),
                  ),
                  ListView.builder(
                    itemCount: 5,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container();
                    },
                  )
                ],
              )),
        ));
  }
}
