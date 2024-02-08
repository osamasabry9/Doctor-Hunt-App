import '../../../../core/themes/app_style.dart';
import 'get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextAndButtonOnBoarding extends StatelessWidget {
  const TextAndButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: AppStyle.font13GrayRegular,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30.h),
          const GetStartedButton(),
        ],
      ),
    );
  }
}
