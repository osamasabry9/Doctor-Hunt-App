import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/features/login/presentation/cubit/login_cubit.dart';
import 'package:doctor/features/sign_up/data/repositories/sign_up_reppo.dart';
import 'package:doctor/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../core/networking/dio_factory.dart';
import '../features/home/data/datasources/home_api_service.dart';
import '../features/home/data/repositories/home_repo.dart';
import '../features/login/data/repositories/login_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio & api service
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(dio),
  );

// login instance
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // SignUp instance
  getIt
      .registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt<ApiService>()));

  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepo>()));

  // Home instance
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt
      .registerLazySingleton<HomeRepo>(() => HomeRepo(getIt<HomeApiService>()));
}
