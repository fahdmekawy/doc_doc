import 'package:json_annotation/json_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  SignUpResponse({this.userData, this.status, this.message, this.code});

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
