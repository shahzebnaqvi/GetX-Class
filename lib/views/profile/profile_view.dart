import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getxcpractice/controllers/homecontrollers/home_controller.dart';
import 'package:getxcpractice/controllers/profilecontollers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  final HomeController homeControl = Get.put(HomeController());
  final ProfileController profileControl = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                profileControl.onbackfunc();
              },
              child: Text("back")),
          Center(
              child: Text(
            "${homeControl.countvalue}",
            style: TextStyle(fontSize: 40),
          )),
        ],
      ),
    );
  }
}
