import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controller/CompleteDataController.dart';
import 'package:task/core/Constant/AppColors.dart';
import 'package:task/core/constant/AppHelper.dart';

import 'PickPictureButton.dart';

class CarPictures extends StatelessWidget {
  const CarPictures({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CompleteDataController>(
      builder: (controller) => SizedBox(
          width: AppHelper.appWidth(),
          height: 110,
          child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 5),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => index == 0
                  ? PickPictureButton(
                      minWidth: 90,
                      isCarImage: true,
                      onPressed: () => controller.pickCarImages(),
                    )
                  : Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              width: 90,
                              height: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: FileImage(
                                      controller.carImages[index - 1],
                                    ),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 22,
                                width: 22,
                                decoration: const BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                    )),
                                child: PopupMenuButton(
                                  padding: EdgeInsets.zero,
                                  iconSize: 20,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  color: AppColors.white,
                                  itemBuilder: (context) => [],
                                ),
                              ))
                        ],
                      ),
                    ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: controller.carImages.length + 1)),
    );
  }
}
