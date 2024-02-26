import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/logic/cubit/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/login_repository.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginStates.initial());

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginStates.loading());
    final response = await _loginRepository.login(loginRequestBody);
    response.when(
      success: (loginResponse) {
        emit(LoginStates.success(loginResponse));
      },
      failure: (error) {
        emit(LoginStates.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
