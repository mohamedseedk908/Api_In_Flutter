import 'package:api/core/api/end_point.dart';

class SignInModel {
  final String message;
  final String token;

  SignInModel({
    required this.message,
    required this.token,
  });

  factory SignInModel.fromJson(Map<String, dynamic> jsonData) {
    return SignInModel(
      message: jsonData[ApiKey.message],
      token: jsonData[ApiKey.token],
    );
  }
}
