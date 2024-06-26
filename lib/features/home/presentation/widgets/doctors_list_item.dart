import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/themes/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListItem extends StatelessWidget {
  const DoctorsListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            width: 110.w,
            height: 120.h,
            'https://t4.ftcdn.net/jpg/03/20/52/31/360_F_320523164_tx7Rdd7I2XDTvvKfz2oRuRpKOPE5z0ni.jpg',
            fit: BoxFit.cover,
          ),
        ),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Randy Wigham',
                style: AppStyle.font18DarkBlueBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                'General | RSUD Gatot Subroto',
                style: AppStyle.font12GrayMedium,
              ),
              verticalSpace(5),
              Text(
                'Email@email.com',
                style: AppStyle.font12GrayMedium,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
