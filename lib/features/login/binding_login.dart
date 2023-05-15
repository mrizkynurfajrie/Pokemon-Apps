import 'package:get/get.dart';
import 'package:pokemon_app/features/login/controller_login.dart';

class BindingLogin implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerLogin());
  }
}
