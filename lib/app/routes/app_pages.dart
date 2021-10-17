import 'package:get/get.dart';

import 'package:tierra_app/app/modules/home/bindings/home_binding.dart';
import 'package:tierra_app/app/modules/home/views/home_view.dart';
import 'package:tierra_app/app/modules/intoduction/bindings/intoduction_binding.dart';
import 'package:tierra_app/app/modules/intoduction/views/intoduction_view.dart';
import 'package:tierra_app/app/modules/komunitas/bindings/komunitas_binding.dart';
import 'package:tierra_app/app/modules/komunitas/views/komunitas_view.dart';
import 'package:tierra_app/app/modules/login/bindings/login_binding.dart';
import 'package:tierra_app/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTODUCTION,
      page: () => IntoductionView(),
      binding: IntoductionBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.KOMUNITAS,
      page: () => KomunitasView(),
      binding: KomunitasBinding(),
    ),
  ];
}
