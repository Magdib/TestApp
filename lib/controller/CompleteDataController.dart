import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CompleteDataController extends GetxController {
  List<File> carImages = [];
  File? driverLicense;
  File? carLicense;
  List<String> years = [];
  List<String> carTypes = ["تويوتا", "مرسيدس", "كيا", "مازدا", "غير ذلك"];
  String? carYear;
  String? carType;
  chooseCarType(String val) {
    carType = val;
    update();
  }

  chooseYear(String val) {
    carYear = val;
    update();
  }

  pickCarImages() async {
    final ImagePicker picker = ImagePicker();
    final XFile? ximage = await picker.pickImage(source: ImageSource.gallery);
    if (ximage != null) {
      carImages.insert(0, File(ximage.path));
      update();
    }
  }

  pickImage(bool isDriveLicense) async {
    final ImagePicker picker = ImagePicker();
    final XFile? ximage = await picker.pickImage(source: ImageSource.gallery);
    if (ximage != null) {
      if (isDriveLicense) {
        driverLicense = File(ximage.path);
      } else {
        carLicense = File(ximage.path);
      }
      update();
    }
  }

  @override
  void onInit() {
    for (int i = DateTime.now().year; i > 1990; i--) {
      years.add("$i");
    }
    super.onInit();
  }
}
