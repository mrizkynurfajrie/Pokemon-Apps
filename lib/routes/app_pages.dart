import 'package:get/get.dart';
import 'package:pokemon_app/features/splash/page_splash.dart';
import 'package:pokemon_app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const PageSplash(),
    )
  ];
}
