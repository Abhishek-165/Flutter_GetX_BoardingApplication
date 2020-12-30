import 'package:flutter/material.dart';
import 'package:onboarding/view/onboarding_page.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:OnBoardingPage(),);

}}