import 'package:flutter/material.dart';
import 'package:merchant/login_page/loginpage.dart';
import 'package:merchant/onboarding_page/onboarding.dart';
import 'package:merchant/register_page/registerpage.dart';
import 'package:merchant/splash_page/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MediaQuery.withNoTextScaling(child: child ?? const SizedBox());
      },
      title: 'Merchant App',
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case SplashPage.routeName:
            return MaterialPageRoute(
              builder: (context) {
                return const SplashPage();
              },
            );
          case OnboardingPage.routeName:
            return MaterialPageRoute(
              builder: (context) {
                return const OnboardingPage();
              },
            );
          case Loginpage.routeName:
            return MaterialPageRoute(
              builder: (context) {
                return const Loginpage();
              },
            );
          case RegisterPage.routeName:
            return MaterialPageRoute(
              builder: (context) {
                return const RegisterPage();
              },
            );

          default:
            return MaterialPageRoute(builder: (_) => const SplashPage());
        }
      },
    );
  }
}
