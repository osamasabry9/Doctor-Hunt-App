import '../../../../core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class DoctorImageOnBoarding extends StatelessWidget {
  const DoctorImageOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: const [0.14, 0.4],
        ),
      ),
      child: Image.asset(Assets.imagesOnBoardingDoctor),
    );
  }
}
