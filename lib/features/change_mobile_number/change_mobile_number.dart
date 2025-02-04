import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:teachers_app/config/common_widgets/app_textfild.dart';
import 'package:teachers_app/config/common_widgets/apptext.dart';
import 'package:teachers_app/config/common_widgets/button.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';
import 'package:teachers_app/config/router/route_names.dart';

class ChangeMobileNumber extends StatelessWidget {
  final TextEditingController mobileNumberController = TextEditingController();
  ChangeMobileNumber({super.key});

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
          backgroundColor: Colors.transparent),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Center(
                  child: AppText(
                      text: "Enter new Mobile Number",
                      style: AppTextStyles.rob20Semi()),
                ),
                const SizedBox(height: 16),
                Center(
                  child: AppText(
                      text: "Please enter your new Mobile Number",
                      style: AppTextStyles.pop12Reg(
                          color: AppColors.inActiveText)),
                ),
                const SizedBox(height: 32),
                CustomTextInput(
                  hintText: "123456789",
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                          child: Text(
                        "+91 |",
                        style: AppTextStyles.pop15Reg(
                            color: AppColors.inActiveText),
                      )),
                    ],
                  ),
                  labelText: "Enter Mobile Number",
                  labelColor: AppColors.inActiveText,
                  onChanged: (value) {},
                  controller: mobileNumberController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    return null;
                  },
                  validateOnInputChange: true,
                  showValidationIcons: true,
                ),
              ]),
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: AppButton(
            buttonName: "Get OTP",
            onPress: () {
              context.pushNamed(AppRouteNames.otpScreen);
            }),
      )),
    );
  }
}
