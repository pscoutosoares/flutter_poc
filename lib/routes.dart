import 'package:flutter_poc/pages/landing_page.dart';
import 'package:get/get.dart';
import 'package:flutter_poc/pages/home.dart';
import 'package:flutter_poc/pages/login.dart';
import 'package:flutter_poc/pages/sign_up.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => HomePage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/login',
        page: () => LoginPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/signup',
        page: () => SignupPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/landing_page',
        page: () => LandingPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
    ];
