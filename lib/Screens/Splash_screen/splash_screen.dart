import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/splash_screen_controller.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          // Obx(
          //   () => AnimatedPositioned(
          //     duration: const Duration(milliseconds: 1600),
          //     top: splashController.animate.value ? 10 : -200,
          //     left: splashController.animate.value ? 10 : -200,
          //     child: Image(
          //         image: AssetImage("assets/images/dancer.png"),
          //         width: 120,
          //         height: 180),
          //   ),
          // ),
          // Positioned(
          //   top: 220,
          //   left: 0,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         "Club Management App",
          //         style: Theme.of(context).textTheme.headline5,
          //       ),
          //       Text(
          //         "Single Solution to manage all hustle of Club management",
          //         style: Theme.of(context).textTheme.headline6,
          //       ) ̰
          //     ],
          //   ),
          // ),
          // Obx(
          //   () => AnimatedPositioned(
          //     duration: const Duration(milliseconds: 1600),
          //     top: splashController.animate.value ? 10 : -200,
          //     right: splashController.animate.value ? 10 : -200,
          //     child: Image(
          //         image: AssetImage("assets/images/poetry.png"),
          //         width: 150,
          //         height: 180),
          //   ),
          // ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? 180 : 100,
              right: 30,
              child: Image(
                  image: AssetImage("assets/images/bg.png"),
                  width: 350,
                  height: 350),
            ),
          ),
          // Obx(
          //   () => AnimatedPositioned(
          //     duration: const Duration(milliseconds: 1600),
          //     bottom: splashController.animate.value ? 0 : -200,
          //     left: splashController.animate.value ? 10 : -200,
          //     child: Image(
          //         image: AssetImage("assets/images/fincom.png"),
          //         width: 120,
          //         height: 180),
          //   ),
          // ),
          // Obx(
          //   () => AnimatedPositioned(
          //     duration: const Duration(milliseconds: 1600),
          //     bottom: splashController.animate.value ? 10 : -200,
          //     right: splashController.animate.value ? 10 : -200,
          //     child: Image(
          //         image: AssetImage("assets/images/vibgyor.png"),
          //         width: 120,
          //         height: 180),
          //   ),
          // ),
          // Positioned(
          //   bottom: 60,
          //   right: 30,
          //   child: Container(
          //     width: 30,
          //     height: 30,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(100),
          //       color: tPrimaryColor,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
