import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:teachers_app/config/common_widgets/apptext.dart';
import 'package:teachers_app/config/common_widgets/button.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';

class OtpScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();
  final defaultPinTheme = PinTheme(
    width: 50,
    height: 50,
    textStyle: AppTextStyles.pop15Reg(),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      // border: Border.all(color: AppColors.blue3),
    ),
  );
  OtpScreen({super.key});

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 52),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Center(
                  child: AppText(
                      textAlign: TextAlign.center,
                      text: "Enter OTP send to your",
                      style: AppTextStyles.rob20Semi()),
                ),
                Center(
                  child: AppText(
                      textAlign: TextAlign.center,
                      text: "New Mobile Number",
                      style: AppTextStyles.rob20Semi()),
                ),
                const SizedBox(height: 16),
                Center(
                  child: AppText(
                      text: "Please verify your registered Mobile Number",
                      style: AppTextStyles.pop12Reg(
                          color: AppColors.inActiveText)),
                ),
                const SizedBox(height: 32),
                Pinput(
                  readOnly: false,
                  controller: otpController,
                  defaultPinTheme: defaultPinTheme,
                  separatorBuilder: (index) => const SizedBox(width: 32),
                  validator: (value) {
                    return null;
                  },
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint('onCompleted: $pin');
                  },
                  onChanged: (value) {
                    // setState(() {});
                    debugPrint('onChanged: $value');
                  },
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText(
                        text: "Resend code in 4:55",
                        style: AppTextStyles.pop12Reg(
                            color: AppColors.inActiveText)),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: AppButton(buttonName: "Verify", onPress: () {}),
        )));
  }
}
