import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper/spacing.dart';
import '../../cubit/home_cubit.dart';
import '../../cubit/home_state.dart';
import '../doctors/doctors_shimmer_loading.dart';
import 'doctors_specialty_list_view.dart';
import 'speciality_shimmer_loading.dart';


class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
            specializationsLoading: () {
              return setupLoading();
            },
            specializationsSuccess: (specializationDataList) {
              var specializationsList = specializationDataList;
              return setupSuccess(specializationsList);
            },
            specializationsError: (errorHandler) => setupError(),
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialtyShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialtyListView(
      specializationsList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
