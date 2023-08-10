import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/button_add.dart';
import 'package:trashure/app/global_widgets/text_field_basic.dart';
import 'package:trashure/app/global_widgets/text_field_icon.dart';
import 'package:trashure/app/global_widgets/text_field_long.dart';
import 'package:trashure/constant.dart';

import '../controllers/add_aduan_controller.dart';

class AddAduanView extends GetView<AddAduanController> {
  const AddAduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: customAppBar("Tambah Aduan"),
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
                              "https://media.npr.org/assets/img/2012/10/28/trash2-614f006a7e1d70a7fee7c5d5a92788107dd0c8a7.jpg"),
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
                  "Lengkapi Detail Aduan",
                  style: customTextSTyle(18.0, black, FontWeight.w600),
                ),
                const SizedBox(height: mediumPadding),
                textFieldBasic("Nama Pengadu", "Cth : Tatang Sutarman"),
                textFieldBasic("Kontak", "Cth : 08123456789"),
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
                textFieldLong("Deskripsi", "Lorem ipsum dolor sit amet."),
                buttonAdd("Buat aduan"),
              ],
            ),
          ),
        ));
  }
}
