import 'package:doctor/core/helper/extensions.dart';
import 'package:doctor/core/themes/app_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';


class DonotHaveAccountText extends StatelessWidget {
  const DonotHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: AppStyle.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: AppStyle.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}