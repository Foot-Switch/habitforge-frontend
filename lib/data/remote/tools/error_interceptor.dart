import 'package:dio/dio.dart';
import 'package:habitforge_frontend/common/event_bus.dart';

class ErrorResponse {
  ErrorResponse(this.response);

  final Response? response;
}

class ErrorInterceptor extends InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final errorResponse = err.response;
    errorEventBus.fire(ErrorResponse(errorResponse));
    super.onError(err, handler);
  }
}
