import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task/controller/MainController.dart';
import 'package:task/controller/MapControlller.dart';
import 'package:task/core/constant/AppColors.dart';
import 'package:task/core/constant/AppHelper.dart';
import 'package:task/core/functions/customAppBar.dart';

class MapPage extends GetView<MainController> {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: customMapAppBar(context: context, isOrderspage: false),
      drawer: const Drawer(),
      body: GetBuilder<MapPageController>(
        builder: (storesMapController) => storesMapController.loading
            ? const Center(
                child: CircularProgressIndicator(
                  color: AppColors.primaryColor,
                ),
              )
            : Stack(
                children: [
                  SizedBox(
                    height: AppHelper.appHeight(),
                    child: GoogleMap(
                      compassEnabled: false,
                      zoomControlsEnabled: false,
                      myLocationButtonEnabled: false,
                      myLocationEnabled: false,
                      mapType: MapType.normal,
                      markers: storesMapController.markerList.toSet(),
                      initialCameraPosition: storesMapController.kGooglePlex,
                      onMapCreated: (GoogleMapController controllerMap) {
                        storesMapController.controller.complete(controllerMap);
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
