import 'package:doctor/core/themes/app_style.dart';
import 'package:doctor/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widgets/donot_have_account_text.dart';
import '../widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
              vertical: 30.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: AppStyle.font24BlueBold,
                  ),
                  verticalSpace(8),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: AppStyle.font14GrayRegular,
                  ),
                  verticalSpace(36),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(hintText: "Email"),
                        verticalSpace(18),
                        AppTextFormField(
                          hintText: "Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            child: Icon(isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          isObscureText: isObscureText,
                        ),
                        verticalSpace(24),
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text("Forgot Password?",
                              style: AppStyle.font13BlueRegular),
                        ),
                        verticalSpace(40),
                        AppTextButton(
                          textButton: "Login",
                          onPressed: () {},
                          textStyle: AppStyle.font13BlueRegular,
                        ),
                        verticalSpace(16),
                        const TermsAndConditionsText(),
                        verticalSpace(16),
                        const DonotHaveAccountText(),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
