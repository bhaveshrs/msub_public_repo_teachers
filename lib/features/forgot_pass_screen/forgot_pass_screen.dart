import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:teachers_app/config/common_widgets/app_textfild.dart';
import 'package:teachers_app/config/common_widgets/apptext.dart';
import 'package:teachers_app/config/common_widgets/button.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_images.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';
import 'package:teachers_app/config/router/route_names.dart';

class ForgotPassScreen extends StatelessWidget {
  ForgotPassScreen({super.key});
  final TextEditingController prnController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(height: 10),
            Center(
              child: AppText(
                  text: "Forgot Password", style: AppTextStyles.rob20Semi()),
            ),
            const SizedBox(height: 16),
            Center(
              child: AppText(
                  textAlign: TextAlign.center,
                  text: "Please enter your PRN, registered email ID, and ",
                  style: AppTextStyles.pop12Reg(color: AppColors.inActiveText)),
            ),
            Center(
              child: AppText(
                  textAlign: TextAlign.center,
                  text: "OTP to reset your password",
                  style: AppTextStyles.pop12Reg(color: AppColors.inActiveText)),
            ),
            const SizedBox(height: 21),
            // CustomTextInput(
            //   prefixIcon: IntrinsicHeight(
            //     child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Center(child: SvgPicture.asset(AppImages.profile)),
            //         const Text("   |  ")
            //       ],
            //     ),
            //   ),
            //   labelText: "Enter PRN of Student",
            //   labelColor: AppColors.inActiveText,
            //   onChanged: (value) {},
            //   controller: prnController,
            //   keyboardType: TextInputType.emailAddress,
            //   validator: (value) {
            //     return null;
            //   },
            //   validateOnInputChange: true,
            //   showValidationIcons: true,
            // ),
            // const SizedBox(height: 16),
            CustomTextInput(
              prefixIcon: IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(AppImages.email),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0) +
                          const EdgeInsets.only(left: 8),
                      child: const VerticalDivider(
                        color: AppColors.inActiveText,
                      ),
                    )
                  ],
                ),
              ),
              hintText: "example@gmail.com",
              labelText: "Enter Email Address",
              labelColor: AppColors.inActiveText,
              onChanged: (value) {},
              controller: prnController,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                return null;
              },
              validateOnInputChange: true,
              showValidationIcons: true,
            ),
            // const SizedBox(height: 17),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppText(
                        text: "Enter the OTP",
                        textAlign: TextAlign.start,
                        fontSize: 12,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                      const SizedBox(height: 5),
                      Pinput(
                        readOnly: false,
                        controller: otpController,
                        defaultPinTheme: defaultPinTheme,
                        separatorBuilder: (index) => const SizedBox(width: 6),
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
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppImages.timerIcon,
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(width: 5),
                          const AppText(
                            text: "4:55",
                            textAlign: TextAlign.start,
                            fontSize: 12,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      AppButton(
                          // loading: state.verifyOtpStatus.isInProgress ||
                          //     state.sendEmailOtpStatus.isInProgress,
                          buttonColor:
                              //  state.verifyOtpStatus.isSuccess
                              //     ? AppColors.green
                              //     : (state.sendEmailOtpStatus.isSuccess &&
                              //                 otpController.text.length ==
                              //                     4) ||
                              //             (!state.sendEmailOtpStatus
                              //                     .isSuccess &&
                              //                 facultyIdController
                              //                     .text.isNotEmpty)
                              //         ? AppColors.blue3
                              AppColors.inActiveBtn,
                          onPress: () {
                            // if (!state.verifyOtpStatus.isSuccess) {
                            //   if (state.sendEmailOtpStatus.isSuccess &&
                            //       otpController.text.length >= 4) {
                            //     context
                            //         .read<ForgotPassBloc>()
                            //         .add(OtpVerifyEvent(otp: otpController.text));
                            //   } else if (!state.sendEmailOtpStatus.isSuccess &&
                            //       facultyIdController.text.isNotEmpty) {
                            //     context.read<ForgotPassBloc>().add(SentForgotPassOtpEvent(
                            //         email: facultyIdController.text,
                            //         empId: "emp1234567"));
                            //   }
                            // }
                          },
                          buttonName:
                              // state.sendEmailOtpStatus.isSuccess ?
                              "Verify"
                          //  : "Get OTP",
                          ),
                      const SizedBox(height: 5),
                      const AppText(
                        text: "Resend OTP?",
                        textAlign: TextAlign.start,
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        color: AppColors.inActiveText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        )),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: AppButton(
              buttonName: "Next",
              onPress: () {
                context.pushNamed(AppRouteNames.changePasswordScreen);
              }),
        )));
  }
}
