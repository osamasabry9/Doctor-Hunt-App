import '../../../../core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/themes/app_style.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.imagesDocLogo),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'DocDoc',
          style: AppStyle.font24BlackBold,
        ),
      ],
    );
  }
}
