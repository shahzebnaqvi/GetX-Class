import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxcpractice/controllers/homecontrollers/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final HomeController homeControl = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              "${homeControl.countvalue}",
              style: TextStyle(fontSize: 33),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                homeControl.incrementobs();
              },
              child: Text("Check Type")),
          ElevatedButton(
              onPressed: () {
                homeControl.navigatetoprofile();
              },
              child: Text("profile ")),
          // ElevatedButton(
          //     onPressed: () {
          //       homeControl.checktype();
          //     },
          //     child: Text("Check Type"))
        ],
      )),
      //   child: GetBuilder(
      //       init: homeControl,
      //       builder: (context) {
      //         return Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text(
      //               "${homeControl.countvalue}",
      //               style: TextStyle(fontSize: 33),
      //             ),
      //             ElevatedButton(
      //                 onPressed: () {
      //                   homeControl.increment();
      //                 },
      //                 child: Text("Increment")),
      //             ElevatedButton(
      //                 onPressed: () {
      //                   homeControl.decrement();
      //                 },
      //                 child: Text("Decrement"))
      //           ],
      //         );
      //       }),
      // ),
    );
  }
}
