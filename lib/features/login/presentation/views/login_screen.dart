import 'package:doctor/core/themes/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../cubit/login_cubit.dart';
import '../widgets/donot_have_account_text.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listener.dart';
import '../widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

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
                  Column(
                    children: [
                      const EmailAndPassword(),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text("Forgot Password?",
                            style: AppStyle.font13BlueRegular),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        textButton: "Login",
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                        textStyle: AppStyle.font14BlueSemiBold
                            .copyWith(color: Colors.white),
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(30),
                      const DonotHaveAccountText(),
                      const LoginBlocListener(),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
