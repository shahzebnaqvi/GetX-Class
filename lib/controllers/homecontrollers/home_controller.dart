import 'package:get/get.dart';
import 'package:getxcpractice/views/profile/profile_view.dart';

class HomeController extends GetxController {
  var countvalue = 0.obs;
  checktype() {
    print(countvalue.runtimeType);
  }

  incrementobs() {
    countvalue = countvalue + 1;
    print(countvalue);
  }

  navigatetoprofile() {
    Get.to(() => ProfileView());
  }
  // increment() {
  //   countvalue = countvalue + 1;
  //   update();
  //   print(countvalue);
  // }

  // decrement() {
  //   countvalue = countvalue - 1;
  //   update();
  //   print(countvalue);
  // }
}
