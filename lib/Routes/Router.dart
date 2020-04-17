import 'package:bridge/pages/HomePage/HomePage.dart';
import 'package:bridge/pages/SignIn/GoogleLogin.dart';
import 'package:bridge/pages/SignIn/LoginPage.dart';
import 'package:bridge/pages/SignIn/SignupPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String HomeViewRoute = '/';
const String LoginViewRoute = 'login';
const String SignupViewRoute = 'signup';
const String GoogleLoginRoute = 'ggl';

Route<dynamic> generateRoute(RouteSettings settings) {
  print(settings.name);
  switch (settings.name) {
    case HomeViewRoute:
      return CupertinoPageRoute(
          builder: (context) => HomePage(
                title: 'Bridge',
              ));
    case LoginViewRoute:
      return CupertinoPageRoute(builder: (context) => LoginPage());
    case SignupViewRoute:
      return CupertinoPageRoute(builder: (context) => SignUp());
    case GoogleLoginRoute:
      return CupertinoPageRoute(builder: (context) => GoogleLogin());
    default:
      return MaterialPageRoute(builder: (context) => LoginPage());
  }
}
