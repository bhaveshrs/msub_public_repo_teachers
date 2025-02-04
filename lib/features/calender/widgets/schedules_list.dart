import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/config/resource/app_textstyles.dart';
import 'package:teachers_app/config/router/route_names.dart';
import 'package:teachers_app/features/calender/widgets/schedules_widget.dart';

class SchedulesList extends StatelessWidget {
  final String type;
  const SchedulesList({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: AppTextStyles.pop10Reg(color: AppColors.inActiveText),
        ),
        const SizedBox(
          height: 6,
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.pushNamed(AppRouteNames.eventDetailedView);
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SchedulesWidget(
                        textColor: type == "Events"
                            ? AppColors.purple
                            : type == "Assignment"
                                ? AppColors.assignmentColor
                                : type == "Holiday"
                                    ? AppColors.darkRed
                                    : AppColors.purple),
                    if (index == 1)
                      const SizedBox(
                        height: 15,
                      )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 5,
              );
            },
            itemCount: 2)
      ],
    );
  }
}
