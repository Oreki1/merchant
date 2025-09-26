import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:merchant/constaints/colors.dart';
import 'package:merchant/onboarding_page/onboarding.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class Loginpage extends StatefulWidget {
  static const routeName = 'Loginpage';
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onboard_back.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 65),
                Image.asset(
                  'assets/images/test.png',
                  fit: BoxFit.cover,
                  width: 312,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),

                border: Border(top: BorderSide(color: AppColors.Gray400)),
              ),
              child: BlurryContainer(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                blur: 2,
                color: const Color.fromARGB(70, 0, 0, 0),
                elevation: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Нэвтрэх",
                      style: TextStyle(
                        color: const Color.fromARGB(193, 255, 255, 255),
                        fontSize: 28,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Column(
                      spacing: 12,

                      children: [
                        Column(
                          spacing: 6,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Нэвтрэх нэр',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelStyle: TextStyle(color: AppColors.Gray500),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 12,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                labelText: 'Утасны дугаар, Имэйл хаяг',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          spacing: 6,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Нууц үг',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: AppColors.Gray300,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelStyle: TextStyle(color: AppColors.Gray500),

                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 12,
                                ),

                                fillColor: Colors.white,
                                filled: true,
                                floatingLabelAlignment:
                                    FloatingLabelAlignment.start,
                                labelText: 'Нууц үг',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      spacing: 12,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(
                              context,
                            ).pushNamed(OnboardingPage.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                            backgroundColor: AppColors.primarymain,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Нэвтрэх',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          spacing: 12,
                          children: [
                            Expanded(
                              child: Divider(color: Colors.white, thickness: 1),
                            ),

                            Text(
                              'Эсвэл',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            Expanded(
                              child: Divider(color: Colors.white, thickness: 1),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 12,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(
                                    context,
                                  ).pushNamed(OnboardingPage.routeName);
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12,
                                    horizontal: 16,
                                  ),
                                  side: BorderSide(color: AppColors.Gray300),

                                  backgroundColor: Colors.white,

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      8,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/google.svg",
                                      height: 20,
                                    ),

                                    Text(
                                      'Sign with Google',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(
                                    context,
                                  ).pushNamed(OnboardingPage.routeName);
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 12,
                                    horizontal: 16,
                                  ),
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: AppColors.Gray300),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      8,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  spacing: 8,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/apple.svg",
                                      height: 20,
                                    ),

                                    Text(
                                      'Sign with Apple',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed(OnboardingPage.routeName);
                      },
                      style: TextButton.styleFrom(
                        overlayColor: Colors.transparent,
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Бүртгэлгүй хэрэглэгч? Бүртгүүлэх',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                padding: EdgeInsets.all(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
