import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:task/core/constant/AppImages.dart';

class MapPageController extends GetxController {
  bool loading = true;
  late BitmapDescriptor marker;
  late List<Marker> markerList;
  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();
  CameraPosition kGooglePlex = const CameraPosition(
      target: LatLng(25.21649080341404, 55.252997325293606), zoom: 14.32);

  @override
  void onReady() async {
    marker = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(
          size: Size(20, 20),
        ),
        AppImages.marker);
    markerList = [
      //Static markers
      Marker(
        position: const LatLng(25.21649080341404, 55.252997325293606),
        markerId: const MarkerId('1'),
        infoWindow: const InfoWindow(
          title: "5",
        ),
        icon: marker,
      ),
      Marker(
        position: const LatLng(25.210985343857104, 55.25186285376549),
        markerId: const MarkerId('2'),
        infoWindow: const InfoWindow(
          title: "5",
        ),
        icon: marker,
      ),
      Marker(
        position: const LatLng(25.220844995936645, 55.2635857835412),
        markerId: const MarkerId('3'),
        infoWindow: const InfoWindow(
          title: "5",
        ),
        icon: marker,
      )
    ];
    loading = false;
    update();
    super.onReady();
  }
}
