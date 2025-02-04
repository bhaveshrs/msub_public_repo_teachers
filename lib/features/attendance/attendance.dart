import 'package:flutter/material.dart';
import 'package:teachers_app/config/common_widgets/app_dropdown.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';
import 'package:teachers_app/features/attendance/widgets/make_attendance.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  String? selectedValue;
  final List<String> items = [
    "Mark all Present",
    "Mark all Absent",
    "Mark Individually"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
            horizontal: 14,
          ) +
          const EdgeInsets.only(
            top: 14,
          ),
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(topLeft:  Radius.circular(20),topRight:  Radius.circular(20))),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              child: Row(
                children: [
                  Text(
                    "Roll",
                    style: AppTextStyles.pop12Reg().copyWith(fontSize: 9),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Profile",
                    style: AppTextStyles.pop12Reg().copyWith(fontSize: 9),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Text(
                    "Name",
                    style: AppTextStyles.pop12Reg().copyWith(fontSize: 9),
                  )),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: CommonDropdown(isExpanded: false,
                      isDense: true,
                      items: items,
                      selectedValue: selectedValue,
                      hintText: "--Choose--",
                      onChanged: (String? newValue) {
                        selectedValue = newValue;
                        setState(() {});
                      },
                      buttonDecoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      hintStyle:
                          AppTextStyles.pop10Reg(color: AppColors.inActiveText),
                      dynamicItemTextStyle: (int index, String item) {
                        return AppTextStyles.pop10Reg(
                          color: index == 0
                              ? AppColors.appleGreen
                              : index == 1
                                  ? AppColors.darkRed
                                  : null,
                        );
                      },
                      dropdownIcon: const Icon(Icons.arrow_drop_down, size: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const MakeAttendance();
              },
              separatorBuilder: (context, index) {
                return Container(
                  color: AppColors.backgroundColor,
                  height: 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
