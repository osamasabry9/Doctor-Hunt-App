import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/themes/app_style.dart';
import 'package:doctor/core/themes/colors.dart';
import 'package:doctor/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../data/models/specializations_response_model.dart';

class DoctorsSpecialtyListItem extends StatelessWidget {
  const DoctorsSpecialtyListItem({
    super.key,
    required this.index,
    required this.selectedIndex,
    this.specializationsData,
  });

  final int index;
  final int selectedIndex;
  final SpecializationsData? specializationsData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          index == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorsManager.darkBlue),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorsManager.lightBlue,
                    child: SvgPicture.asset(
                      Assets.svgGeneralSpecialty,
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
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
            specializationsData?.name ?? 'Specialization',
            style: index == selectedIndex
                ? AppStyle.font14DarkBlueBold
                : AppStyle.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
