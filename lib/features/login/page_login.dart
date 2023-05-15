import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/login/controller_login.dart';
import 'package:pokemon_app/routes/app_routes.dart';
import 'package:pokemon_app/shared/constants/assets.dart';
import 'package:pokemon_app/shared/constants/colors.dart';
import 'package:pokemon_app/shared/constants/styles.dart';

class PageLogin extends GetView<ControllerLogin> {
  const PageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary.shade800,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                AppImages.pokemonLogo,
              ),
              GestureDetector(
                onTap: () async {
                  await controller.signInWithGoogle();
                  Get.offNamed(Routes.home);
                },
                child: Image.asset(
                  AppImages.googleSignIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
