import '../../../../core/utils/app_assets.dart';
import 'doctor_image_on_boarding.dart';
import 'doctor_text_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(Assets.svgDocLogoOpacity),
      const DoctorImageOnBoarding(),
      const DoctorTextOnBoarding(),
    ]);
  }
}
