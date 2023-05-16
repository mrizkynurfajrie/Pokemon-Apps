import 'package:get/get.dart';
import 'package:pokemon_app/features/home/api_home.dart';
import 'package:pokemon_app/features/home/controller_home.dart';

class BindingHome implements Bindings {
  @override
  void dependencies() {
    Get.put(ControllerHome(api: ApiHome()));
  }
}
