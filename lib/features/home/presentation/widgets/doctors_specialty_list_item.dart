import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/themes/app_style.dart';
import 'package:doctor/core/themes/colors.dart';
import 'package:doctor/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsSpecialtyListItem extends StatelessWidget {
  const DoctorsSpecialtyListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: ColorsManager.lightBlue,
          child: SvgPicture.asset(
            Assets.svgGeneralSpecialty,
            height: 40.h,
            width: 40.w,
          ),
        ),
        verticalSpace(8),
        Text(
          'General',
          style: AppStyle.font12DarkBlueRegular,
        ),
      ],
    );
  }
}
