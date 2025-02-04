import 'package:flutter/material.dart';
import 'package:teachers_app/config/common_widgets/apptext.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';

class AppButton extends StatelessWidget {
  final String buttonName;
  final Function onPress;
  final bool loading;
  final double? maxWidth;
  final Color? buttonColor;
  final TextStyle? textStyle;
  final bool isEnable;
  final Function? onValidation;
  final EdgeInsetsGeometry? btnPadding;
  final double? borderRadius;
  final Widget? icon;
  const AppButton(
      {super.key,
      required this.buttonName,
      required this.onPress,
      this.loading = false,
      this.maxWidth,
      this.buttonColor,
      this.textStyle,
      this.onValidation,
      this.isEnable = true,
      this.icon,
      this.btnPadding,
      this.borderRadius});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => (isEnable && !loading) ? onPress() : onValidation?.call(),
      child: Container(
        padding: btnPadding ??
            const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
        constraints:
            (maxWidth != null) ? BoxConstraints(maxWidth: maxWidth!) : null,
        decoration: BoxDecoration(
            color: buttonColor ?? AppColors.blue3,
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadius ?? 10))),
        child: Row(
          children: [
            Expanded(
              child: Visibility(
                visible: !loading,
                replacement: const Center(
                    child: SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                )),
                child: Row(mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) ...[
                      icon!,
                      const SizedBox(
                        width: 10,
                      )
                    ],
                    AppText(
                      text: buttonName,
                      textAlign: TextAlign.center,
                      style: textStyle ??
                          AppTextStyles.pop14Semi(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
