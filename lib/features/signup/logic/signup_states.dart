import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_states.freezed.dart';

@freezed
class SignupStates<T> with _$SignupStates<T> {
  const factory SignupStates.initial() = _Initial;

  const factory SignupStates.loading() = Loading;

  const factory SignupStates.success(T data) = Success<T>;

  const factory SignupStates.error({required String error}) = Error;
}
