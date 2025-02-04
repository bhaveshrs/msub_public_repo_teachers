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

class ChangeEmail extends StatelessWidget {
  ChangeEmail({super.key});
  final TextEditingController emailController = TextEditingController();

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
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(height: 10),
            Center(
              child: AppText(
                  text: "Enter new Email Id", style: AppTextStyles.rob20Semi()),
            ),
            const SizedBox(height: 16),
            Center(
              child: AppText(
                  text: "Please enter your Email Id",
                  style: AppTextStyles.pop12Reg(color: AppColors.inActiveText)),
            ),
            const SizedBox(height: 32),
            CustomTextInput(
              hintText: "example@gmail.com",
              prefixIcon: IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(child: SvgPicture.asset(AppImages.email)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0) +
                          const EdgeInsets.only(left: 8),
                      child: const VerticalDivider(
                        color: AppColors.inActiveText,
                      ),
                    )
                    //  Text("   |",style: AppTextStyles.pop15Reg(
                    //         color: AppColors.inActiveText),)
                  ],
                ),
              ),
              labelText: "Enter Email Address",
              labelColor: AppColors.inActiveText,
              onChanged: (value) {},
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
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
