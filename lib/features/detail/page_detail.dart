import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/detail/controller_detail.dart';
import 'package:pokemon_app/routes/app_routes.dart';
import 'package:pokemon_app/shared/constants/colors.dart';
import 'package:pokemon_app/shared/constants/styles.dart';
import 'package:pokemon_app/shared/widgets/loading_indicator.dart';
import 'package:pokemon_app/shared/widgets/page_decoration_top.dart';
import 'package:shimmer/shimmer.dart';

class PageDetail extends GetView<ControllerDetail> {
  const PageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      title: '',
      backgroundColor: AppColor.bgColor,
      toolbarTitleColor: AppColor.primary,
      toolbarColor: AppColor.whiteColor,
      toolbarElevation: 1,
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      resizeAvoidBottom: false,
      enableBack: true,
      onBackPressed: () => Get.offNamed(Routes.home),
      center: Obx(
        () => Text(
          controller.loading.isFalse
              ? controller.controllerPokemon.pokemon.value.name!
              : '...',
          style: TextStyles.inter.copyWith(
            fontSize: FontSizes.s18,
            color: AppColor.primary,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      child: SafeArea(
        child: Obx(
          () => Center(
            child: controller.loading.isFalse
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Pokemon Card
                      Container(
                        width: 335.w,
                        height: 141.h,
                        padding: EdgeInsets.only(
                          top: 31.h,
                          left: 41.w,
                          bottom: 30.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9.w)),
                          color: AppColor.primary.shade800,
                        ),
                        child: Row(
                          children: [
                            CachedNetworkImage(
                              height: 77,
                              width: 77,
                              imageUrl: controller.imgUrl.toString(),
                              fit: BoxFit.cover,
                              progressIndicatorBuilder:
                                  (context, url, progress) => Shimmer(
                                gradient: AppColor.shimmerGradient,
                                child: Container(
                                  color: AppColor.whiteColor,
                                ),
                              ),
                              errorWidget: ((context, url, error) => Icon(
                                    Icons.error,
                                    color: Colors.red,
                                    size: 24.w,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, right: 33.w),
                              child: const VerticalDivider(
                                thickness: 1,
                                color: AppColor.light800,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller
                                      .controllerPokemon.pokemon.value.name!,
                                  style: TextStyles.inter.copyWith(
                                    fontSize: FontSizes.s12,
                                    color: AppColor.light800,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                verticalSpace(16.h),
                                SizedBox(
                                  height: 10,
                                  width: 120.w,
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder: ((context, index) => Text(
                                          'Type : ${controller.listType[0].type!.name!}',
                                          style: TextStyles.inter.copyWith(
                                            fontSize: FontSizes.s10,
                                            color: AppColor.light800,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ),
                                ),
                                verticalSpace(5.h),
                                Text(
                                  'Height : ${controller.controllerPokemon.pokemon.value.height}"',
                                  style: TextStyles.inter.copyWith(
                                    fontSize: FontSizes.s10,
                                    color: AppColor.light800,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                verticalSpace(5.h),
                                Text(
                                  'Weight : ${controller.controllerPokemon.pokemon.value.weight} lb',
                                  style: TextStyles.inter.copyWith(
                                    fontSize: FontSizes.s10,
                                    color: AppColor.light800,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(22.h),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Habilidades',
                          style: TextStyles.inter.copyWith(
                            fontSize: FontSizes.s20,
                            color: AppColor.primary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      verticalSpace(5.h),
                      const Divider(
                        thickness: 1,
                        color: AppColor.light900,
                      ),
                      verticalSpace(23.h),
                      SizedBox(
                        height: 300,
                        width: Get.width,
                        child: ListView.builder(
                          itemCount: controller.listStat.length,
                          itemBuilder: ((context, index) => Container(
                                height: 36.h,
                                width: 342.w,
                                margin: EdgeInsets.only(bottom: 20.h),
                                padding: EdgeInsets.only(
                                  top: 8.h,
                                  bottom: 8.h,
                                  left: 15.w,
                                  right: 34.w,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(9.w),
                                    ),
                                    color: AppColor.primary.shade800),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${controller.controllerPokemon.pokemon.value.stats![index].stat!.name!} :',
                                      style: TextStyles.inter.copyWith(
                                        fontSize: FontSizes.s14,
                                        color: AppColor.light800,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '${controller.controllerPokemon.pokemon.value.stats![index].baseStat}',
                                      style: TextStyles.inter.copyWith(
                                        fontSize: FontSizes.s14,
                                        color: AppColor.light800,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  )
                : loadingIndicator(context),
          ),
        ),
      ),
    );
  }
}
