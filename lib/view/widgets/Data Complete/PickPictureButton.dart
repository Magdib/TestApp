import 'dart:io';

import 'package:flutter/material.dart';
import 'package:task/core/Constant/AppColors.dart';

class PickPictureButton extends StatelessWidget {
  const PickPictureButton({
    super.key,
    required this.minWidth,
    this.isCarImage = false,
    this.height,
    this.image,
    required this.onPressed,
  });
  final double minWidth;
  final double? height;
  final bool isCarImage;
  final File? image;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: minWidth,
      height: 110,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: AppColors.white,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add_circle_outline,
              size: 45,
              color: AppColors.lightGrey,
            ),
            const SizedBox(
              height: 2,
            ),
            Text("أضف صورة",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.bold))
          ]),
    );
  }
}
