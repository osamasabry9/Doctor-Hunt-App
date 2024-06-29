import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/themes/app_style.dart';
import '../../../data/models/specializations_response_model.dart';
import 'image_doctor_container.dart';

class DoctorsListItem extends StatelessWidget {
  const DoctorsListItem({super.key, this.doctorsModel});
  final Doctors? doctorsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(children: [
        const ImageDoctorContainer(),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorsModel?.name ?? 'Name',
                style: AppStyle.font18DarkBlueBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                style: AppStyle.font12GrayMedium,
              ),
              verticalSpace(5),
              Text(
                doctorsModel?.email ?? 'Email',
                style: AppStyle.font12GrayMedium,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
