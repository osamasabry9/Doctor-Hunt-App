import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/themes/app_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';


class DoHaveAccountText extends StatelessWidget {
  const DoHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Do have an account?',
            style: AppStyle.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign In',
            style: AppStyle.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}