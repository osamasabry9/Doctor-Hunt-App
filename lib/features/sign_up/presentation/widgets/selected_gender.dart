import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_style.dart';
import '../../../../core/themes/colors.dart';
import '../cubit/sign_up_cubit.dart';

class SelectedGender extends StatefulWidget {
  const SelectedGender({super.key});

  @override
  State<SelectedGender> createState() => _SelectedGenderState();
}

class _SelectedGenderState extends State<SelectedGender> {
  String selectedGender = 'Male';
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            decoration: BoxDecoration(
              color: ColorsManager.moreLightGray,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: ColorsManager.lightGray,
                width: 1.3,
              ),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              underline: Container(),
              value: selectedGender,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: AppStyle.font14DarkBlueMedium,
              onChanged: (newValue) {
                setState(() {
                  selectedGender = newValue.toString();
                  context.read<SignUpCubit>().genderController.text =
                      selectedGender;
                });
              },
              items: <String>['Male', 'Female'].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
          );
  }
}
