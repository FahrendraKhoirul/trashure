import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/card_label.dart';
import 'package:trashure/app/global_widgets/card_list_detail.dart';
import 'package:trashure/constant.dart';

import '../controllers/detail_event_controller.dart';

class DetailEventView extends GetView<DetailEventController> {
  const DetailEventView({Key? key}) : super(key: key);
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
                cardLabel(Icons.calendar_month_outlined, "Event"),
                const SizedBox(height: mediumPadding),
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
                  "Seribu Sampah",
                  style: customTextSTyle(20.0, black, FontWeight.w600),
                ),
                const SizedBox(height: regularPadding),
                cardListDetail(
                    Icons.calendar_month_outlined, "Sabtu, 29 Juli 2023"),
                cardListDetail(Icons.watch_later, "09.00 WIB"),
                cardListDetail(Icons.location_on, "Lowokwaru, Malang"),
                const SizedBox(height: smallPadding),
                Text(
                  "Tentang Event",
                  style: customTextSTyle(16.0, black, FontWeight.w600),
                ),
                const SizedBox(height: smallPadding),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In in sem nisl. Curabitur est libero, lacinia at urna in, porta laoreet purus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc dignissim nisl mi, ac ullamcorper lectus vulputate vel. Nulla facilisi. ",
                  style: customTextSTyle(14.0, black, FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: extraLargePadding),
              ],
            ),
          ),
        ));
  }
}
