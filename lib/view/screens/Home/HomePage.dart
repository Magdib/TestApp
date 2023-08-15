import 'package:flutter/material.dart';
import 'package:task/core/Routes/routes.dart';
import 'package:task/core/extintions/autoSizedBox.dart';
import 'package:task/core/functions/customAppBar.dart';
import 'package:task/view/widgets/Home/HomeCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, "الصفحات"),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HomeCard(
                  text: "أستكمال البيانات", page: AppRoutes.dataCompleteRoute),
              HomeCard(text: "الخريطة", page: AppRoutes.mapPageRoute),
              HomeCard(text: "الطلبات", page: AppRoutes.ordersPageRoute),
            ]
                .addSeperator(
                    element: const SizedBox(
                  height: 20,
                ))
                .toList(),
          ),
        ));
  }
}
