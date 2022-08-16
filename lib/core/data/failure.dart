import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jig_racing/generated/l10n.dart';

part 'failure.freezed.dart';

abstract class Failure {}

@freezed
class CommonFailure extends Failure with _$CommonFailure {
  const factory CommonFailure.requestCancelled() = RequestCancelled;

  const factory CommonFailure.unauthorisedRequest() = UnauthorisedRequest;

  const factory CommonFailure.badRequest() = BadRequest;

  const factory CommonFailure.notFound(String reason) = NotFound;

  const factory CommonFailure.methodNotAllowed() = MethodNotAllowed;

  const factory CommonFailure.notAcceptable() = NotAcceptable;

  const factory CommonFailure.requestTimeout() = RequestTimeout;

  const factory CommonFailure.sendTimeout() = SendTimeout;

  const factory CommonFailure.conflict() = Conflict;

  const factory CommonFailure.internalServerError() = InternalServerError;

  const factory CommonFailure.notImplemented() = NotImplemented;

  const factory CommonFailure.serviceUnavailable() = ServiceUnavailable;

  const factory CommonFailure.noInternetConnection() = NoInternetConnection;

  const factory CommonFailure.formatException() = FormatException;

  const factory CommonFailure.unableToProcess() = UnableToProcess;

  const factory CommonFailure.defaultError(String error) = DefaultError;

  const factory CommonFailure.unexpectedError() = UnexpectedError;

  static CommonFailure getDioException(error) {
    if (error is Exception) {
      try {
        CommonFailure networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions = const CommonFailure.requestCancelled();
              break;
            case DioErrorType.connectTimeout:
              networkExceptions = const CommonFailure.requestTimeout();
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions = const CommonFailure.sendTimeout();
              break;
            case DioErrorType.sendTimeout:
              networkExceptions = const CommonFailure.sendTimeout();
              break;
            case DioErrorType.response:
              switch (error.response?.statusCode) {
                case 400:
                  networkExceptions = const CommonFailure.unauthorisedRequest();
                  break;
                case 401:
                  networkExceptions = const CommonFailure.unauthorisedRequest();
                  break;
                case 403:
                  networkExceptions = const CommonFailure.unauthorisedRequest();
                  break;
                case 404:
                  networkExceptions = const CommonFailure.notFound("Not found");
                  break;
                case 409:
                  networkExceptions = const CommonFailure.conflict();
                  break;
                case 408:
                  networkExceptions = const CommonFailure.requestTimeout();
                  break;
                case 500:
                  networkExceptions = const CommonFailure.internalServerError();
                  break;
                case 503:
                  networkExceptions = const CommonFailure.serviceUnavailable();
                  break;
                default:
                  var responseCode = error.response?.statusCode;
                  networkExceptions = CommonFailure.defaultError(
                    "Received invalid status code: $responseCode",
                  );
              }
              break;
            case DioErrorType.other:
              networkExceptions = const CommonFailure.unexpectedError();
              break;
          }
        } else {
          networkExceptions = const CommonFailure.unexpectedError();
        }
        return networkExceptions;
      } on FormatException {
        return const CommonFailure.formatException();
      } catch (_) {
        return const CommonFailure.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const CommonFailure.unableToProcess();
      } else {
        return const CommonFailure.unexpectedError();
      }
    }
  }

  static String getErrorMessage(CommonFailure networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, internalServerError: () {
      errorMessage = "Internal Server Error";
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method Allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorisedRequest: () {
      errorMessage = "Unauthorised request";
    }, unexpectedError: () {
      errorMessage = "Unexpected error occurred";
    }, requestTimeout: () {
      errorMessage = "Connection request timeout";
    }, noInternetConnection: () {
      errorMessage = "No internet connection";
    }, conflict: () {
      errorMessage = "Error due to a conflict";
    }, sendTimeout: () {
      errorMessage = "Send timeout in connection with API server";
    }, unableToProcess: () {
      errorMessage = "Unable to process the data";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = "Unexpected error occurred";
    }, notAcceptable: () {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }
}