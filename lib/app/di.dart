import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/features/login/presentation/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../core/networking/dio_factory.dart';
import '../features/login/data/repositories/login_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt()async {

  // dio & api service
  Dio dio = await DioFactory.getDio();
getIt.registerLazySingleton<ApiService>(() =>   ApiService(dio),);

// login instance
  getIt.registerLazySingleton<LoginRepo>(() =>  LoginRepo(getIt<ApiService>()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
}