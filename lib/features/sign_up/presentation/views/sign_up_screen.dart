import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/themes/app_style.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/terms_and_conditions_text.dart';
import '../cubit/sign_up_cubit.dart';
import '../widgets/do_have_account_text.dart';
import '../widgets/sign_up_bloc_listener.dart';
import '../widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    "Create Account",
                    style: AppStyle.font24BlueBold,
                  ),
                  verticalSpace(8),
                  Text(
                    "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                    style: AppStyle.font14GrayRegular,
                  ),
                  verticalSpace(36),
                  Column(
                    children: [
                      const SignUpForm(),
                      verticalSpace(40),
                      AppTextButton(
                        textButton: "Sign Up",
                        onPressed: () {
                          validateThenDoSignUp(context);
                        },
                        textStyle: AppStyle.font14BlueSemiBold
                            .copyWith(color: Colors.white),
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(30),
                      const DoHaveAccountText(),
                      const SignUpBlocListener(),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}
