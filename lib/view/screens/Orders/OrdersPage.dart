import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controller/MainController.dart';
import 'package:task/core/constant/AppColors.dart';
import 'package:task/core/functions/customAppBar.dart';
import 'package:task/view/widgets/Orders/OrderCard.dart';

class OrdersPage extends GetView<MainController> {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: customMapAppBar(context: context, isOrderspage: true),
      drawer: const Drawer(),
      body: ListView.separated(
        itemCount: 3,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemBuilder: (context, index) {
          return Material(
            borderRadius: BorderRadius.circular(14),
            elevation: 10,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.white,
                ),
                child: const OrderCard()),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 15,
          );
        },
      ),
    );
  }
}
