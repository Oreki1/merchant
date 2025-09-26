import 'dart:async';

import 'package:flutter/material.dart';
import 'package:merchant/constaints/colors.dart';
import 'package:after_layout/after_layout.dart';
import 'package:merchant/onboarding_page/onboarding.dart';

class SplashPage extends StatefulWidget {
  static const routeName = 'SplashPage';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with AfterLayoutMixin<SplashPage> {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        Navigator.of(context).pushReplacementNamed(OnboardingPage.routeName);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarymain,
      body: Center(
        child: Image.asset('assets/images/logo_white.png', width: 200),
      ),
    );
  }
}
