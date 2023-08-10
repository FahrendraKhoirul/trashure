import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/card_event.dart';
import 'package:trashure/app/global_widgets/card_header.dart';
import 'package:trashure/constant.dart';

import '../controllers/event_controller.dart';

class EventView extends GetView<EventController> {
  const EventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: customAppBar("Event Komunitas"),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: largePadding, vertical: smallPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cardHeader(
                        "assets/icons/icon_event.png",
                        "Ingin mengadakan event komunitas?",
                        "Buat acara webinar, kerja bakti, volunteer bersama komunitasmu.",
                        "Buat event", () {
                      Get.toNamed("/event/add-event");
                    }),
                    const SizedBox(height: largePadding),
                    Text(
                      "Event yang tersedia",
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
                            child: cardEvent(
                                "https://www.rd.com/wp-content/uploads/2020/03/GettyImages-1147902353-scaled.jpg?resize=700,466",
                                "Seribu Sampah",
                                "8 Juli 2023",
                                "09.00 WIB",
                                "Lowokwaru, Malang"),
                            onTap: () {
                              Get.toNamed("/event/detail-event");
                            },
                          );
                        })
                  ])),
        ));
  }
}
