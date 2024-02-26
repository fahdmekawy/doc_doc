import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:doc_doc/features/login/logic/cubit/login_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/login_repository.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepository _loginRepository;

  LoginCubit(this._loginRepository) : super(const LoginStates.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginStates.loading());
    final response = await _loginRepository.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) {
      emit(LoginStates.success(loginResponse));
    }, failure: (error) {
      emit(LoginStates.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
