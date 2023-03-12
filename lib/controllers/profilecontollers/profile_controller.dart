import 'package:get/get.dart';
import 'package:getxcpractice/controllers/homecontrollers/home_controller.dart';

class ProfileController extends GetxController {
  final HomeController homeControl = Get.put(HomeController());
  var countvalue2 = 0;
  onbackfunc() {
    Get.back();
  }

  @override
  void onInit() {
    Get.back();
    countvalue2 = homeControl.countvalue.value;
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
