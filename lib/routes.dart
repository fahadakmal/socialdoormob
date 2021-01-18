import 'package:flutter/material.dart';
import 'package:socialdoormob/screens/onBoarding1.dart';
import 'package:socialdoormob/screens/signInScreen/signInScreem.dart';
import 'package:socialdoormob/screens/splashScreen.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => SplashScreen(),
  ONBoarding1.routeName: (context) => ONBoarding1(),
  SignInScreen.routeName:(context) => SignInScreen(),
};
