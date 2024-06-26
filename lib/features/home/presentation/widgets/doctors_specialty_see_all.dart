import 'package:flutter/material.dart';

import '../../../../core/themes/app_style.dart';

class DoctorsSpecialtySeeAll extends StatelessWidget {
  const DoctorsSpecialtySeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Doctor Speciality', style: AppStyle.font18DarkBlueSemiBold),
        Text('See All', style: AppStyle.font12BlueRegular),
      ],
    );
  }
}
