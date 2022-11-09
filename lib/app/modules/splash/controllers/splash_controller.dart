import 'package:get/get.dart';
import 'package:skeleton/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3))
        .then((value) => Get.offNamed(Routes.HOME));
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
