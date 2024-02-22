import 'package:doctor/features/sign_up/data/repositories/sign_up_reppo.dart';
import 'package:doctor/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/sign_up_request_body.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo)
      : super(
          const SignUpState.initial(),
        );

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUpStates() async {
    emit(const SignUpState.loading());
    final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: genderController.text == 'Male' ? 0 : 1,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
      ),
    );
    response.when(success: (signUpResponse) {
      emit(SignUpState.success(signUpResponse));
    }, failure: (error) {
      emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
