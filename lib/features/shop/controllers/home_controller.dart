import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carauselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carauselCurrentIndex.value = index;
  }
}
