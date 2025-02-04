// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:teachers_app/config/common_widgets/apptext.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';

class TitleMore extends StatelessWidget {
  final String title;
  final Function onTap;
  const TitleMore({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0,vertical: 4),
      child: Row(
        children: [
          AppText(
            text: title,
            style: AppTextStyles.rob16Medium(),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => onTap.call(),
            child: AppText(
              text: "More",
              style: AppTextStyles.rob12Medium(color: AppColors.hyperLink),
            ),
          )
        ],
      ),
    );
  }
}
