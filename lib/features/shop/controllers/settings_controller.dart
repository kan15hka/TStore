import 'package:get/get.dart';

class SettingsController extends GetxController {
  static SettingsController get instance => Get.find();

  //Variables
  RxBool geoLocationSwitch = true.obs;
  RxBool safeModeSwitch = false.obs;
  RxBool hdImgQualitySwitch = false.obs;
}
