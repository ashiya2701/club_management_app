
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../Screens/Onboarding/onboarding_page_widget.dart';
import '../Screens/SignUp/signup_screen.dart';
import '../Models/model_onboarding.dart';



class OnBoardingController extends GetxController{

  final controller = LiquidController();
  RxInt currentPage = 0.obs;


  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: "assets/images/schedule.png",
        title: "Schedule Management",
        subTitle: "It helps all the clubs to organize their regular session without clashing of sessions",
        counterText: "1/3",
        bgColor: Color.fromARGB(255, 255, 255, 255),
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: "assets/images/attendance.png",
        title: "Activity of Students",
        subTitle: "It keeps track of attendace of students in club sessions and participation in club activities",
        counterText: "2/3",
        bgColor: Color(0xfffddcdf),
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: "assets/images/booking.png",
        title: "Hall Booking",
        subTitle: "It provides the club core team memers to book the hall in advance",
        counterText: "3/3",
        bgColor: Color(0xffffdcbd),
      ),
    ),
  ];


  skip() => Get.to(const SignUpScreen());
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
}