import 'package:get/get.dart';
import 'package:task/controller/CompleteDataController.dart';
import 'package:task/controller/MapControlller.dart';
import 'package:task/view/screens/Data%20Complete/DataCompletePage.dart';
import 'package:task/view/screens/Home/HomePage.dart';
import 'package:task/view/screens/Map/MapPage.dart';
import 'package:task/view/screens/Orders/OrdersPage.dart';

class AppRoutes {
  static const String homePageRoute = "/";
  static const String mapPageRoute = "/mapPage";
  static const String ordersPageRoute = "/ordersPage";
  static const String dataCompleteRoute = "/dataCompleteRoute";
}

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoutes.homePageRoute,
    page: () => const HomePage(),
  ),
  GetPage(
      name: AppRoutes.mapPageRoute,
      page: () => const MapPage(),
      binding: BindingsBuilder.put(() => MapPageController()),
      transitionDuration: const Duration(milliseconds: 600),
      transition: Transition.size),
  GetPage(
      name: AppRoutes.ordersPageRoute,
      page: () => const OrdersPage(),
      transitionDuration: const Duration(milliseconds: 600),
      transition: Transition.downToUp),
  GetPage(
      name: AppRoutes.dataCompleteRoute,
      page: () => const DataCompletePage(),
      binding: BindingsBuilder.put(() => CompleteDataController()),
      transitionDuration: const Duration(milliseconds: 600),
      transition: Transition.upToDown)
];
