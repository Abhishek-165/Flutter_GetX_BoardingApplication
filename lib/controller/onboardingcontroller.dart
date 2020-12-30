import 'package:flutter/cupertino.dart';
import 'package:onboarding/model/onboarding_model.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnBoardingController extends GetxController
{

var selectedPage = 0.obs;

  bool get isLastPage => selectedPage.value == onboardingPages.length - 1;
var pageController = PageController();

forwardAction() {
    if (isLastPage) {
      //go to home page
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

List<OnBoardingInfo> onboardingPages = [
    OnBoardingInfo('images/order.png', 'Order Your Food',
        'Now you can order food any time  right from your mobile.'),

    OnBoardingInfo('images/cook.png', 'Cooking Safe Food',
        'We are maintain safty and We keep clean while making food.'),
    
    OnBoardingInfo('images/deliver.png', 'Quick Delivery',
        'Orders your favorite meals will be  immediately deliver')
  ];

}