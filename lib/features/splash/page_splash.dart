import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/splash/controller_splash.dart';
import 'package:pokemon_app/shared/constants/assets.dart';
import 'package:pokemon_app/shared/constants/colors.dart';

class PageSplash extends GetView<ControllerSplash> {
  const PageSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary.shade800,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            AppImages.pokemonLogo,
          ),
        ),
      ),
    );
  }
}
