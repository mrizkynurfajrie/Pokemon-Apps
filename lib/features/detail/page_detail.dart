import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/detail/controller_detail.dart';
import 'package:pokemon_app/shared/constants/colors.dart';
import 'package:pokemon_app/shared/widgets/page_decoration_top.dart';

class PageDetail extends GetView<ControllerDetail> {
  const PageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      backgroundColor: AppColor.bgColor,
      toolbarTitleColor: AppColor.primary,
      toolbarColor: AppColor.whiteColor,
      resizeAvoidBottom: false,
      enableBack: true,
      center: Row(),
      child: SafeArea(
        child: Column(),
      ),
    );
  }
}
