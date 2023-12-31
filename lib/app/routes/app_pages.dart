import 'package:get/get.dart';

import '../modules/aduan/add_aduan/bindings/add_aduan_binding.dart';
import '../modules/aduan/add_aduan/views/add_aduan_view.dart';
import '../modules/aduan/bindings/aduan_binding.dart';
import '../modules/aduan/detail_aduan/bindings/detail_aduan_binding.dart';
import '../modules/aduan/detail_aduan/views/detail_aduan_view.dart';
import '../modules/aduan/views/aduan_view.dart';
import '../modules/donasi/add_donasi/bindings/add_donasi_binding.dart';
import '../modules/donasi/add_donasi/views/add_donasi_view.dart';
import '../modules/donasi/bindings/donasi_binding.dart';
import '../modules/donasi/detail_donasi/bindings/detail_donasi_binding.dart';
import '../modules/donasi/detail_donasi/views/detail_donasi_view.dart';
import '../modules/donasi/views/donasi_view.dart';
import '../modules/edukasi/bindings/edukasi_binding.dart';
import '../modules/edukasi/detail_artikel/bindings/detail_artikel_binding.dart';
import '../modules/edukasi/detail_artikel/views/detail_artikel_view.dart';
import '../modules/edukasi/detail_edukasi/bindings/detail_edukasi_binding.dart';
import '../modules/edukasi/detail_edukasi/views/detail_edukasi_view.dart';
import '../modules/edukasi/views/edukasi_view.dart';
import '../modules/event/add_event/bindings/add_event_binding.dart';
import '../modules/event/add_event/views/add_event_view.dart';
import '../modules/event/bindings/event_binding.dart';
import '../modules/event/detail_event/bindings/detail_event_binding.dart';
import '../modules/event/detail_event/views/detail_event_view.dart';
import '../modules/event/views/event_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/navbar_view.dart';
import '../modules/location/bindings/location_binding.dart';
import '../modules/location/views/location_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/wasteClassification/bindings/waste_classification_binding.dart';
import '../modules/wasteClassification/views/waste_classification_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NavbarView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DONASI,
      page: () => const DonasiView(),
      binding: DonasiBinding(),
      children: [
        GetPage(
          name: _Paths.ADD_DONASI,
          page: () => const AddDonasiView(),
          binding: AddDonasiBinding(),
        ),
        GetPage(
          name: _Paths.DETAIL_DONASI,
          page: () => const DetailDonasiView(),
          binding: DetailDonasiBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.EVENT,
      page: () => const EventView(),
      binding: EventBinding(),
      children: [
        GetPage(
          name: _Paths.ADD_EVENT,
          page: () => const AddEventView(),
          binding: AddEventBinding(),
        ),
        GetPage(
          name: _Paths.DETAIL_EVENT,
          page: () => const DetailEventView(),
          binding: DetailEventBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.ADUAN,
      page: () => const AduanView(),
      binding: AduanBinding(),
      children: [
        GetPage(
          name: _Paths.ADD_ADUAN,
          page: () => const AddAduanView(),
          binding: AddAduanBinding(),
        ),
        GetPage(
          name: _Paths.DETAIL_ADUAN,
          page: () => const DetailAduanView(),
          binding: DetailAduanBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.EDUKASI,
      page: () => const EdukasiView(),
      binding: EdukasiBinding(),
      children: [
        GetPage(
          name: _Paths.DETAIL_EDUKASI,
          page: () => const DetailEdukasiView(),
          binding: DetailEdukasiBinding(),
        ),
        GetPage(
          name: _Paths.DETAIL_ARTIKEL,
          page: () => const DetailArtikelView(),
          binding: DetailArtikelBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.LOCATION,
      page: () => const LocationView(),
      binding: LocationBinding(),
    ),
    GetPage(
      name: _Paths.WASTE_CLASSIFICATION,
      page: () => const WasteClassificationView(),
      binding: WasteClassificationBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
