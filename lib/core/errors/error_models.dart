import 'package:api/core/api/end_point.dart';

class ErrorsModel {
  final int status;
  final String errorMessage;

  ErrorsModel({required this.status, required this.errorMessage});

  factory ErrorsModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorsModel(
      status: jsonData[ApiKey.status],
      errorMessage: jsonData[ApiKey.errorMessage],
    );
  }
}
