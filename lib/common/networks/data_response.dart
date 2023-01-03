import 'package:manga_reader/common/exceptions/app_exception.dart';

class DataResponse<TResponse> {
  DataResponse._();

  dynamic get self => this;

  bool get isFailure => runtimeType == DataFailure<TResponse>;

  bool get isSuccess => runtimeType == DataSuccess<TResponse>;

  TResponse? get getResponse => isSuccess ? self.response : null;

  AppException? get getException => isFailure ? self.exception : null;

  TResult when<TResult>({
    required TResult Function(TResponse response) onSuccess,
    required TResult Function(AppException exception) onFailure,
  }) {
    if (isSuccess) {
      return onSuccess(getResponse as TResponse);
    } else {
      return onFailure(getException as AppException);
    }
  }
}

class DataSuccess<TResponse> extends DataResponse<TResponse> {
  final TResponse response;

  DataSuccess({required this.response}) : super._();
}

class DataFailure<TResponse> extends DataResponse<TResponse> {
  final AppException exception;

  DataFailure({required this.exception}) : super._();
}
