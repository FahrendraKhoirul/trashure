import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/button_add.dart';
import 'package:trashure/app/global_widgets/text_field_basic.dart';
import 'package:trashure/app/global_widgets/text_field_icon.dart';
import 'package:trashure/constant.dart';

import '../controllers/add_event_controller.dart';

class AddEventView extends GetView<AddEventController> {
  const AddEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: customAppBar("Tambah Event"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: largePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(largeRounded),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://www.rd.com/wp-content/uploads/2020/03/GettyImages-1147902353-scaled.jpg?resize=700,466"),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(height: regularPadding),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: white,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                              horizontal: regularPadding,
                              vertical: extraSmallPadding),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(mediumRounded),
                              side:
                                  const BorderSide(color: black, width: 2.0))),
                      onPressed: () {},
                      child: Text(
                        "Ganti foto",
                        style: customTextSTyle(14.0, black, FontWeight.w500),
                      )),
                ),
                const SizedBox(height: mediumPadding),
                Text(
                  "Lengkapi Detail Event",
                  style: customTextSTyle(18.0, black, FontWeight.w600),
                ),
                const SizedBox(height: mediumPadding),
                textFieldBasic("Nama Event", "Cth : Seribu Sampah"),
                textFieldBasic("Penyelenggara", "Cth : Pandawara"),
                Padding(
                  padding: const EdgeInsets.only(bottom: regularPadding),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tanggal & Waktu",
                            style:
                                customTextSTyle(14.0, grey, FontWeight.w600)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 160,
                              child: textFieldIcon(
                                  Icons.calendar_month, "Pilih tanggal", () {}),
                            ),
                            SizedBox(
                              width: 160,
                              child: textFieldIcon(
                                  Icons.watch_later, "Pilih waktu", () {}),
                            )
                          ],
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: regularPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lokasi",
                          style: customTextSTyle(14.0, grey, FontWeight.w600)),
                      textFieldIcon(Icons.location_on, "Pilih lokasi", () {}),
                    ],
                  ),
                ),
                buttonAdd("Buat event")
              ],
            ),
          ),
        ));
  }
}
