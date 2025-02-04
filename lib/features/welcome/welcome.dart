import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teachers_app/config/common_widgets/apptext.dart';
import 'package:teachers_app/config/common_widgets/background.dart';
import 'package:teachers_app/config/common_widgets/button.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_images.dart';
import 'package:teachers_app/config/router/route_names.dart';

class WelcomeHome extends StatelessWidget {
  const WelcomeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue3,
      body: BackgroundScreen(
          firstCircleAngle: CircleAngle(x: -128, y: -90),
          secondCircleAngle: CircleAngle(x: -247, y: -245),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.welcome),
                const AppText(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white,
                  text: "FACULTY OF COMMERCE",
                  fontFamily: "KoHo",
                ),
                // Spacer(),
              ],
            ),
          )),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35), topRight: Radius.circular(35)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppText(
              text: "Welcome, Educator!",
              fontFamily: "KoHo",
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 5,
            ),
            const AppText(
              text: "Log in to manage your classes and students.",
              textAlign: TextAlign.center,
              fontFamily: "KoHo",
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: AppButton(
                  buttonName: "next",
                  onPress: () {
                    context.go(AppRouteNames.signinRoute);
                    // context.go(AppRouteNames.dashboardRoute);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
