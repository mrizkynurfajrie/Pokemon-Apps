import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/splash/controller_splash.dart';

class PageSplash extends GetView<ControllerSplash> {
  const PageSplash({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}