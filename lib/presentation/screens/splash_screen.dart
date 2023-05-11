// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:finca/presentation/screens/welcome_screen.dart';
import 'package:finca/widgets/logo_finca.dart';
import 'package:flutter/material.dart';
import 'package:finca/components.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/colors_picker.dart';
import '../../core/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});
  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkUserLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kfincaPinkBg,
      body: Padding(
        padding: EdgeInsets.only(top: 170),
        child: Logo(
          color1: kWhite,
          color2: kblueGrey,
        ),
      ),
    );
  }

  Future<void> gotoWelcomePage() async {
    await Future.delayed(const Duration(milliseconds: 1700));
    Navigator.of(context).pushReplacementNamed('/welcome');
  }

  Future<void> checkUserLogin() async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    final _userLoggedIn = _sharedPrefs.getBool(SAVE_KEY_NAME);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoWelcomePage();
    } else {
      Navigator.of(context).pushReplacementNamed('/home');
    }
  }
}
