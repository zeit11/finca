import 'package:finca/presentation/screens/login/screen_login.dart';
import 'package:finca/presentation/screens/login/widgets/forgot_password.dart';
import 'package:finca/presentation/screens/signup/screen_registration.dart';

import 'package:flutter/material.dart';

import '../screens/main_page/screen_main_page.dart';
import '../screens/splash/screen_splash.dart';
import '../screens/welcome/screen_welcome.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );

      case '/welcome':
        return MaterialPageRoute(
          builder: (_) => WelcomeScreen(),
        );

      case '/signup':
        return MaterialPageRoute(
          builder: (_) => RegistrationScreen(),
        );

      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );

      case '/forgotPassword':
        return MaterialPageRoute(
          builder: (_) => ForgotPassword(),
        );

      case '/mainpage':
        return MaterialPageRoute(
          builder: (_) => ScreenMainPage(),
        );

      default:
        return null;
    }
  }
}
