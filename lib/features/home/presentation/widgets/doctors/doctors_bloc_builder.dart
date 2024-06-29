import 'package:doctor/features/home/presentation/cubit/home_cubit.dart';
import 'package:doctor/features/home/presentation/cubit/home_state.dart';
import 'package:doctor/features/home/presentation/widgets/doctors/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctorsList) => setupSuccess(doctorsList),
          doctorsError: (errorHandler) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(doctorsList) {
    return DoctorsListView(doctorsList: doctorsList);
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
