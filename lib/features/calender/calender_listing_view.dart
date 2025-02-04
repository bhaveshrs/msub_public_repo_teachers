import 'package:flutter/cupertino.dart';
import 'package:teachers_app/config/resource/app_colors.dart';
import 'package:teachers_app/features/calender/widgets/calender_listing.dart';

class CalenderListingView extends StatelessWidget {
  final String type;
  const CalenderListingView({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ) +
            const EdgeInsets.only(
              top: 19,
            ),
        decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: ListView.builder(
          itemCount: 15,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return  CalenderListing(type : type);
          },
        ));
  }
}
