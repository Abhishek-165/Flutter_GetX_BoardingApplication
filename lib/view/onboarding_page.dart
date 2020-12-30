import 'package:flutter/material.dart';
import 'package:onboarding/controller/onboardingcontroller.dart';
import 'package:get/state_manager.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  final _controller = OnBoardingController();
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: _controller.selectedPage,
            controller: _controller.pageController,
              itemCount: _controller.onboardingPages.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          _controller.onboardingPages[index].imageAssets),
                      SizedBox(height: 32),
                      Text(
                        _controller.onboardingPages[index].title,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 32),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64.0),
                        child: Text(
                          _controller.onboardingPages[index].description,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                );
              }),

          //three button

          Positioned(
            bottom: 20,
            left: 20,
              child: Row(
            children: List.generate(
                _controller.onboardingPages.length,
                (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(3.0),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              color: _controller.selectedPage.value== index? Colors.red: Colors.grey, shape: BoxShape.circle),
                        );
                  }
                )),
          )),
          Positioned(
            right: 20,
            bottom: 20,
            child: FloatingActionButton(
            onPressed: _controller.forwardAction,
            child:  Obx(() {
                  return Text(_controller.isLastPage ? 'Start' : 'Next');
                }),),)
        ],
      ),
    );
  }
}
