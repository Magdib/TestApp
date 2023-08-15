import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controller/CompleteDataController.dart';
import 'package:task/core/Constant/AppColors.dart';
import 'package:task/core/constant/AppHelper.dart';

import 'PickPictureButton.dart';

class CarValidation extends GetView<CompleteDataController> {
  const CarValidation({
    super.key,
    this.image,
    required this.text,
    required this.isDriverLicense,
  });
  final String text;
  final bool isDriverLicense;
  final File? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        image == null
            ? PickPictureButton(
                minWidth: AppHelper.appWidth() / 2 - 40,
                onPressed: () => controller.pickImage(isDriverLicense),
              )
            : InkWell(
                onTap: () => controller.pickImage(isDriverLicense),
                child: Container(
                  height: 110,
                  width: AppHelper.appWidth() / 2 - 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: FileImage(image!), fit: BoxFit.fill)),
                ),
              )
      ],
    );
  }
}
