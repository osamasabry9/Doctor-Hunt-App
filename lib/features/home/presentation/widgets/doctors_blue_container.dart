import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/app_style.dart';
import '../../../../core/utils/app_assets.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 167.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: const DecorationImage(
                image: AssetImage(Assets.imagesHomeBluePattern),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: AppStyle.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                      ),
                    ),
                    child:
                        Text('Find Nearby', style: AppStyle.font12BlueRegular),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 8.w,
            child: Image.asset(
              Assets.imagesHomeNurse,
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
