import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/app_bar.dart';
import 'package:trashure/app/global_widgets/button_add.dart';
import 'package:trashure/app/global_widgets/text_field_basic.dart';
import 'package:trashure/constant.dart';

class AddDonasiView extends GetView {
  const AddDonasiView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        appBar: customAppBar("Tambah Donasi"),
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
                              "https://jualbelilaptop.id/wp-content/uploads/2020/08/unnamed-47.jpg"),
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
                  "Lengkapi Detail Barang",
                  style: customTextSTyle(18.0, black, FontWeight.w600),
                ),
                const SizedBox(height: mediumPadding),
                textFieldBasic("Nama Barang", "Cth : Sofa Bekas"),
                textFieldBasic("Deskripsi",
                    "Cth : Sofa masih bagus, lecet dikit gak ngaruh"),
                textFieldBasic("Alamat", "Cth : Palung mariana"),
                textFieldBasic("Kontak", "Cth : 08123456789"),
                buttonAdd("Buat donasi"),
              ],
            ),
          ),
        ));
  }
}
