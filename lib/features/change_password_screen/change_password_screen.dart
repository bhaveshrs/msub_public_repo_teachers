import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:teachers_app/config/common_widgets/app_textfild.dart';
import 'package:teachers_app/config/common_widgets/apptext.dart';
import 'package:teachers_app/config/common_widgets/button.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_images.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';
import 'package:teachers_app/config/router/route_names.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Widget commonRow({required String svg, required String title}) {
    return Row(
      children: [
        SvgPicture.asset(svg),
        const SizedBox(width: 12),
        AppText(
            text: title, style: AppTextStyles.pop12Reg(color: AppColors.grey)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(children: [
           const SizedBox(height: 10),
            Center(
              child: AppText(
                  text: "Change Password", style: AppTextStyles.rob20Semi()),
            ),
            const SizedBox(height: 14),
            Center(
              child: AppText(
                  textAlign: TextAlign.center,
                  text: "Set a strong password to secure your account.",
                  style: AppTextStyles.pop12Reg(color: AppColors.inActiveText)),
            ),
            const SizedBox(height: 32),
            CustomTextInput(
              labelText: "Current Password",
              hintText: 'Password',
              labelColor: AppColors.inActiveText,
              onChanged: (value) {},
              controller: currentPasswordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                return null;
              },
              validateOnInputChange: true,
              showValidationIcons: true,
            ),
            const SizedBox(height: 16),
            CustomTextInput(
              labelText: "New Password",
              hintText: 'Password',
              labelColor: AppColors.inActiveText,
              onChanged: (value) {},
              controller: newPasswordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                return null;
              },
              validateOnInputChange: true,
              showValidationIcons: true,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  commonRow(
                      svg: AppImages.accept, title: "Minimum 8 characters"),
                  const SizedBox(height: 11),
                  commonRow(
                      svg: AppImages.accept,
                      title:
                          "Must contain letters, numbers, and a \nspecial character"),
                ],
              ),
            ),
            const SizedBox(height: 16),
            CustomTextInput(
              labelText: "Confirm Password",
              hintText: 'Password',
              labelColor: AppColors.inActiveText,
              onChanged: (value) {},
              controller: newPasswordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                return null;
              },
              validateOnInputChange: true,
              showValidationIcons: true,
            ),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRouteNames.forGotPassScreen);
              },
              child: AppText(
                  text: "Forgot Password",
                  style: AppTextStyles.pop12Reg(color: AppColors.textColor)),
            )
          ]),
        )),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: AppButton(buttonName: "Next", onPress: () {}),
        )));
  }
}
