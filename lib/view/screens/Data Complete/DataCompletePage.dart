import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controller/CompleteDataController.dart';
import 'package:task/core/constant/AppColors.dart';
import 'package:task/core/constant/CustomIcons.dart';
import 'package:task/core/extintions/autoSizedBox.dart';
import 'package:task/core/functions/customAppBar.dart';
import 'package:task/view/widgets/Data%20Complete/CarPictures.dart';
import 'package:task/view/widgets/Data%20Complete/CarDropDownButton.dart';
import 'package:task/view/widgets/Data%20Complete/CustomButton.dart';
import 'package:task/view/widgets/Data%20Complete/CustomTextFiled.dart';
import 'package:task/view/widgets/Data%20Complete/ValidationRow.dart';

class DataCompletePage extends StatelessWidget {
  const DataCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "استكمال بيانات التسجيل", fontSize: 18),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTextFiled(
                  hint: "رقم المركبة", icon: CustomIcons.caricon),
              GetBuilder<CompleteDataController>(
                builder: (controller) => CarDropDownButton(
                  hintText: "نوع المركبة",
                  onChanged: (val) => controller.chooseCarType(val!),
                  value: controller.carType,
                  items: controller.carTypes,
                ),
              ),
              const CustomTextFiled(
                  hint: "موديل المركبة", icon: CustomIcons.modelicon),
              GetBuilder<CompleteDataController>(
                builder: (controller) => CarDropDownButton(
                  hintText: "سنة الصنع",
                  onChanged: (val) => controller.chooseYear(val!),
                  value: controller.carYear,
                  items: controller.years,
                ),
              ),
              Text(
                "صور المركبة",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: AppColors.black),
              ),
              const CarPictures(),
            ]
                .addSeperator(
                    element: const SizedBox(
                  height: 13,
                ))
                .toList(),
          ),
        ),
        const Divider(color: AppColors.grey, thickness: 1),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              GetBuilder<CompleteDataController>(
                builder: (controller) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CarValidation(
                        text: "رخصة قيادة",
                        isDriverLicense: true,
                        image: controller.driverLicense),
                    CarValidation(
                        text: "رخصة السيارة",
                        isDriverLicense: false,
                        image: controller.carLicense),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(onPressed: () {})
            ],
          ),
        ),
      ]),
    );
  }
}
