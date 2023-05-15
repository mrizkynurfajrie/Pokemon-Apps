import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/home/controller_home.dart';
import 'package:pokemon_app/shared/constants/colors.dart';

class PageHome extends GetView<ControllerHome> {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
