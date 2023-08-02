import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:get/get.dart';
import 'package:trashure/app/global_widgets/card_ads.dart';
import 'package:trashure/app/global_widgets/card_content.dart';
import 'package:trashure/app/global_widgets/icon_button.dart';
import 'package:trashure/constant.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  largePadding, extraLargePadding, largePadding, mediumPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // make text date now from datetime
                  Animate(
                    effects: const [ShimmerEffect()],
                    child: Image.asset(
                      'assets/icons/logo.png',
                      width: 90,
                    )
                        .animate(onPlay: (controller) => controller.repeat())
                        .shimmer(duration: const Duration(seconds: 2)),
                  ),
                  const SizedBox(
                    height: mediumPadding,
                  ),
                  Text(
                    'Halo, Rija!',
                    style: customTextSTyle(28, black, FontWeight.w700),
                  ),
                ],
              ),
            ),
            // Carousel
            CarouselSlider(
                items: [
                  'assets/images/illus_donasi.png',
                  'assets/images/illus_tipe plastik.png'
                ].map((e) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          // width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 6.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: AssetImage(e), fit: BoxFit.fitWidth),
                              boxShadow: [cardShadow]));
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  aspectRatio: 2.5,
                  enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                  viewportFraction: 0.95,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 6),
                )),
            // Content
            Padding(
                padding: const EdgeInsets.fromLTRB(largePadding,
                    extraLargePadding, largePadding, mediumPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jelajahi Trashure",
                        style: customTextSTyle(18, black, FontWeight.w600)),
                    const SizedBox(
                      height: mediumPadding,
                    ),
                    Wrap(
                      spacing: mediumPadding,
                      alignment: WrapAlignment.spaceEvenly,
                      runAlignment: WrapAlignment.center,
                      children: [
                        customIconButton(
                            "assets/icons/icon_donasi.png", "Donasi", () {}),
                        customIconButton(
                            "assets/icons/icon_lokasi.png", "Drop Off", () {}),
                        customIconButton(
                            "assets/icons/icon_edukasi.png", "Edukasi", () {}),
                        customIconButton(
                            "assets/icons/icon_aduan.png", "Aduan", () {}),
                        customIconButton("assets/icons/icon_komunitas.png",
                            "Komunitas", () {}),
                      ],
                    ),
                    const SizedBox(
                      height: mediumPadding,
                    ),
                    cardAds(),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Kegiatan Terbaru",
                            style: customTextSTyle(18, black, FontWeight.w600),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style:
                                  customTextSTyle(14, yellow, FontWeight.w600),
                            ))
                      ],
                    ),
                    CarouselSlider(
                        items: [
                          cardContent(
                            onTap: () {},
                            image:
                                "https://awsimages.detik.net.id/community/media/visual/2022/12/31/pandawara-group-1_169.jpeg?w=1200",
                            title: "Pandawara Group",
                            description:
                                "Pandawara Group adalah sebuah komunitas yang bergerak di bidang lingkungan hidup. Komunitas ini berdiri pada tanggal 1 Januari 2021. Pandawara Group memiliki 3 divisi, yaitu Pandawara, Trashure, dan Trashure Academy. Pandawara Group memiliki visi untuk mengubah perilaku masyarakat Indonesia menjadi lebih peduli terhadap lingkungan hidup.",
                          ),
                          cardContent(
                              onTap: () {},
                              image:
                                  "https://kampoengngawi.com/module/uploads/2017/10/bersih-desa-jogorogo-2017.jpg",
                              title: "Bersih Desa Jogorogo",
                              description:
                                  "Bersih Desa Jogorogo adalah sebuah kegiatan yang dilakukan oleh Pandawara Group untuk membersihkan lingkungan desa Jogorogo, Ngawi. Kegiatan ini dilakukan pada tanggal 1 Januari 2021."),
                        ].map((e) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: e);
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                            clipBehavior: Clip.none,
                            height: 292,
                            enableInfiniteScroll: false,
                            viewportFraction: 0.98)),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Edukasi",
                            style: customTextSTyle(18, black, FontWeight.w600),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat Semua",
                              style:
                                  customTextSTyle(14, yellow, FontWeight.w600),
                            ))
                      ],
                    ),
                    CarouselSlider(
                        items: [
                          cardContent(
                              onTap: () {},
                              image:
                                  "https://informatika.uin-malang.ac.id/wp-content/uploads/2020/09/opah.jpg",
                              title: "Manfaat Pengolahan Sampah",
                              description:
                                  "Pengolahan sampah merupakan suatu proses yang dilakukan untuk mengolah sampah menjadi bahan yang berguna. Pengolahan sampah dapat dilakukan dengan berbagai cara, seperti daur ulang, kompos, dan lain-lain."),
                          cardContent(
                              onTap: () {},
                              image:
                                  "https://media.istockphoto.com/id/1184909515/vector/vector-plastic-waste-resin-codes-recycling-icons.jpg?s=612x612&w=is&k=20&c=vgRq103w1y9E7RU5q5oM71NEsWB2uI7t8gOJ-kZLqAg=",
                              title: "Pelajari Kode Kode Plastik",
                              description:
                                  "Kode plastik adalah kode yang tertera pada kemasan plastik. Kode ini menunjukkan jenis plastik yang digunakan pada kemasan tersebut. Kode plastik ini juga menunjukkan apakah plastik tersebut dapat didaur ulang atau tidak."),
                        ].map((e) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: e);
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                            clipBehavior: Clip.none,
                            height: 292,
                            enableInfiniteScroll: false,
                            viewportFraction: 0.98)),
                    const SizedBox(
                      height: mediumPadding,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
