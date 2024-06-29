import 'package:doctor/core/helper/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/errors/api_error_handler.dart';
import '../../data/models/specializations_response_model.dart';
import '../../data/repositories/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(
      success: (specializationsResponseModel) {
        // setting the list of specializations when the user opens the app for the first time.
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        // getting the doctors list for the first specialization by default when the user opens the app
        getDoctorsList(specializationId: specializationsList?.first?.id ?? 1);

        emit(HomeState.specializationsSuccess(
            specializationsResponseModel.specializationDataList));
      },
      failure: (error) {
        emit(HomeState.specializationsError(error));
      },
    );
  }

  /// This function returns the list of doctors based on the [specializationId] when the user clicks on a specialization in the home screen.
  void getDoctorsList({required int? specializationId}) async {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);
    getDoctorsListBySpecializationId(specializationId);
    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
