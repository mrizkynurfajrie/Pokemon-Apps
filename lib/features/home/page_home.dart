import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pokemon_app/features/home/controller_home.dart';
import 'package:pokemon_app/response/pokemons.dart';
import 'package:pokemon_app/routes/app_routes.dart';
import 'package:pokemon_app/shared/constants/colors.dart';
import 'package:pokemon_app/shared/constants/styles.dart';
import 'package:pokemon_app/shared/widgets/loading_indicator.dart';
import 'package:shimmer/shimmer.dart';

class PageHome extends GetView<ControllerHome> {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Obx(
              () => controller.loading.isFalse
                  ? RefreshIndicator(
                      onRefresh: () async {
                        await Future.delayed(const Duration(seconds: 2));
                        controller.listPokemon.clear();
                        controller.getPokemonList();
                      },
                      child: Column(
                        children: [
                          Container(
                            width: Get.width,
                            height: Get.height,
                            padding: EdgeInsets.only(
                              top: 88.h,
                              left: 26.w,
                              right: 25.w,
                              bottom: 41.h,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                    ),
                                    itemCount: controller.listPokemon.length,
                                    itemBuilder: ((context, index) {
                                      return CardItem(
                                        pokemons: controller.listPokemon[index],
                                      );
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : loadingIndicator(context),
            ),
          ),
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.pokemons,
  });

  final Pokemons pokemons;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.detail, arguments: pokemons.id);
      },
      child: Container(
        height: 157.h,
        width: 157.w,
        margin: EdgeInsets.only(
          right: 10.w,
          bottom: 15.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 40.w,
          vertical: 17.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.w)),
          color: AppColor.primary.shade800,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: pokemons.id!,
              child: CachedNetworkImage(
                imageUrl: pokemons.imageUrl,
                fit: BoxFit.cover,
                progressIndicatorBuilder: ((context, url, progress) => Shimmer(
                      gradient: AppColor.shimmerGradient,
                      child: Container(
                        color: AppColor.whiteColor,
                      ),
                    )),
                errorWidget: ((context, url, error) => Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 24.w,
                    )),
              ),
            ),
            verticalSpace(9.h),
            Text(
              pokemons.name!,
              style: TextStyles.inter.copyWith(
                fontSize: 10,
                color: AppColor.whiteColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
