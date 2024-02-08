import 'package:flutter/material.dart';

import '../../../../core/themes/app_style.dart';

class DoctorTextOnBoarding extends StatelessWidget {
  const DoctorTextOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: Text(
        'Best Doctor\nAppointment App',
        textAlign: TextAlign.center,
        style: AppStyle.font32BlueBold.copyWith(
          height: 1.4,
        ),
      ),
    );
  }
}
