import 'package:get/get.dart';
import 'package:pokemon_app/features/detail/api_detail.dart';
import 'package:pokemon_app/features/detail/controller_detail.dart';

class BindingDetail implements Bindings {
  @override
  void dependencies() {
    Get.put(ControllerDetail(api: ApiDetail()));
  }
}
