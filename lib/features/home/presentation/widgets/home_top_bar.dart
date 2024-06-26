import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/themes/app_style.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/app_assets.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Osama!', style: AppStyle.font18DarkBlueBold),
            Text('How Are you Today?', style: AppStyle.font12GrayRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset(Assets.svgNotifications),
        )
      ],
    );
  }
}
