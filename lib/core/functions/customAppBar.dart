import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controller/MainController.dart';
import 'package:task/core/Routes/routes.dart';
import 'package:task/core/constant/AppColors.dart';
import 'package:task/core/constant/AppImages.dart';

AppBar customAppBar(BuildContext context, String title,
    {double fontSize = 20}) {
  return AppBar(
    backgroundColor: AppColors.white,
    centerTitle: true,
    leading: Get.currentRoute.contains(AppRoutes.dataCompleteRoute)
        ? IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.primaryColor,
              size: 30,
            ))
        : null,
    title: Text(
      title,
      style:
          Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: fontSize),
    ),
  );
}

customMapAppBar({required BuildContext context, required bool isOrderspage}) {
  MainController controller = Get.find();

  return AppBar(
    backgroundColor: AppColors.white,
    leading: IconButton(
      onPressed: () => controller.scaffoldKey.currentState!.openDrawer(),
      icon: const Icon(
        Icons.menu,
        color: AppColors.primaryColor,
        size: 35,
      ),
    ),
    title: isOrderspage
        ? Text(
            'الطلبات',
            style: Theme.of(context).textTheme.titleLarge,
          )
        : Image.asset(
            AppImages.appIcon,
            height: 45,
          ),
    actions: [
      Image.asset(
        AppImages.notification,
        width: 30,
      ),
    ],
    centerTitle: true,
  );
}
