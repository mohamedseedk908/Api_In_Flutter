import 'package:api/core/errors/error_models.dart';
import 'package:dio/dio.dart';

class ServerException implements Exception {
  final ErrorsModel errModel;

  ServerException({required this.errModel});
}




void handleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      throw ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      throw ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      throw ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      throw ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400: // Bad request
          ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
        case 401: // unauthorized
          ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
        case 403: // forbidden
          ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
        case 404: // not found
          ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
        case 409: // cofficient
          ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
        case 422: // unprocessable Entity
          ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
        case 405: // Server Exception
          ServerException(errModel: ErrorsModel.fromJson(e.response!.data));
      }
  }
}