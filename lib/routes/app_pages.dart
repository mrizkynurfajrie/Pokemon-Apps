import 'package:get/get.dart';
import 'package:pokemon_app/features/detail/binding_detail.dart';
import 'package:pokemon_app/features/detail/page_detail.dart';
import 'package:pokemon_app/features/home/binding_home.dart';
import 'package:pokemon_app/features/home/page_home.dart';
import 'package:pokemon_app/features/login/binding_login.dart';
import 'package:pokemon_app/features/login/page_login.dart';
import 'package:pokemon_app/features/splash/page_splash.dart';
import 'package:pokemon_app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const PageSplash(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const PageLogin(),
      binding: BindingLogin(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const PageHome(),
      binding: BindingHome(),
    ),
    GetPage(
      name: Routes.detail,
      page: () => const PageDetail(),
      binding: BindingDetail(),
    ),
  ];
}
