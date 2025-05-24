import 'dart:async';

import 'package:alpha_login_ui/screens/login.dart';
import 'package:alpha_login_ui/utils/app_assets.dart';
import 'package:alpha_login_ui/utils/app_colors.dart';
import 'package:alpha_login_ui/utils/app_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;
  double _scale = 0.8;
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
        _scale = 1.0;
      });
    });

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gradientColor1, AppColors.gradientColor2],
          ),
        ),
        child: AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: _opacity,
          child: AnimatedScale(
            duration: const Duration(seconds: 2),
            scale: _scale,
            child: Column(
              children: [
                SizedBox(height: 90),
                Image.asset(AppAssets.splashLogo, height: 200),

                Text(
                  AppStrings.appTitle,
                  style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppStrings.splashText,
                  style: TextStyle(
                    color: AppColors.textWhiteColor,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
