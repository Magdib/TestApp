import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/controller/MainController.dart';
import 'package:task/core/Routes/routes.dart';
import 'package:task/core/theme/Theme.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: routes,
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      initialBinding: BindingsBuilder.put(() => MainController()),
    );
  }
}
