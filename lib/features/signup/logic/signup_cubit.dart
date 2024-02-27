import 'package:doc_doc/features/signup/data/models/signup_request_body.dart';
import 'package:doc_doc/features/signup/logic/signup_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repositories/signup_repository.dart';

class SignupCubit extends Cubit<SignupStates> {
  final SignupRepository _signupRepository;

  SignupCubit(this._signupRepository) : super(const SignupStates.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupStates.loading());
    final response = await _signupRepository.signup(
      SignUpRequestBody(
          name: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          password: passwordController.text,
          passwordConfirmation: passwordConfirmationController.text,
          gender: 0),
    );
    response.when(success: (signupResponse) {
      emit(SignupStates.success(signupResponse));
    }, failure: (error) {
      emit(SignupStates.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
