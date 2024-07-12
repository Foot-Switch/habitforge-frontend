import 'package:dio/dio.dart';
import 'package:habitforge_frontend/common/app_config.dart';
import 'package:habitforge_frontend/data/remote/tools/error_interceptor.dart';
import 'package:habitforge_frontend/data/remote/tools/header_interceptor.dart';

class NetworkClient {
  final int _connectTimeoutSeconds = 5;
  final int _receiveTimeoutSeconds = 5;

  Dio init() {
    final dio = Dio();
    _setupOptions(dio);
    _addInterceptors(dio);
    return dio;
  }

  void _setupOptions(Dio dio) {
    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = Duration(seconds: _connectTimeoutSeconds);
    dio.options.receiveTimeout = Duration(seconds: _receiveTimeoutSeconds);
  }

  void _addInterceptors(Dio dio) {
    dio.interceptors.add(HeaderInterceptor());
    dio.interceptors.add(ErrorInterceptor());
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
  }
}
