import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/constant/AppColors.dart';
import 'package:task/core/constant/AppHelper.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.text,
    required this.page,
  });
  final String text;
  final String page;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppHelper.appWidth() / 2,
      child: MaterialButton(
        onPressed: () => Get.toNamed(page),
        height: 60,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: AppColors.primaryColor,
        child: Center(
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
