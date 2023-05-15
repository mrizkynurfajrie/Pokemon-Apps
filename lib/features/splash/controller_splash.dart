import 'package:get/get.dart';
import 'package:pokemon_app/routes/app_routes.dart';

class ControllerSplash extends GetxController {
  @override
  void onInit() {
    animationSplash();
    super.onInit();
  }

  animationSplash() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offNamed(Routes.login);
  }
}
