import 'package:flutter/material.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';

class AssignmentTile extends StatelessWidget {
  const AssignmentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Design Studio",
                  style: AppTextStyles.pop18Semi(color: AppColors.blue3),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Assignment 1",
                  style: AppTextStyles.pop12Reg(),
                ),
                const SizedBox(
                  height: 5,
                ),
                RichText(
                  text: TextSpan(
                    text: "Description: ",
                    style: AppTextStyles.pop12Reg(color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            "Lorem ipsum dolor sit amet. Est vitae dicta quo expedita architecto ut facere quos....",
                        style: AppTextStyles.pop12Reg(
                          color: AppColors.inActiveText,
                        ),
                      ),
                    ],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            size: 12,
          )
        ],
      ),
    );
  }
}
