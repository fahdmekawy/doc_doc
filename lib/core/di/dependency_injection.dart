import 'package:dio/dio.dart';
import 'package:doc_doc/features/login/data/repositories/login_repository.dart';
import 'package:doc_doc/features/signup/data/repositories/signup_repository.dart';
import 'package:doc_doc/features/signup/logic/signup_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/logic/cubit/login_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt
      .registerLazySingleton<SignupRepository>(() => SignupRepository(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
