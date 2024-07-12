import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

enum HttpMethod { get, put, post, patch, delete }

final testDio = Dio();

enqueueResponse(
  HttpMethod httpMethod,
  String path, {
  int responseCode = 200,
  Map<String, dynamic>? queryParams,
  dynamic requestBody,
  dynamic responseBody,
}) {
  testDio.options = BaseOptions(baseUrl: "https://test.com/$path");
  final dioAdapter = DioAdapter(dio: testDio);
  switch (httpMethod) {
    case HttpMethod.get:
      dioAdapter.onGet(path, (server) => server.reply(responseCode, responseBody), queryParameters: queryParams);
      break;
    case HttpMethod.put:
      dioAdapter.onPut(path, (server) => server.reply(responseCode, responseBody), queryParameters: queryParams);
      break;
    case HttpMethod.post:
      dioAdapter.onPost(path, (server) => server.reply(responseCode, responseBody), queryParameters: queryParams);
      break;
    case HttpMethod.patch:
      dioAdapter.onPatch(path, (server) => server.reply(responseCode, responseBody), queryParameters: queryParams);
      break;
    case HttpMethod.delete:
      dioAdapter.onDelete(path, (server) => server.reply(responseCode, responseBody), queryParameters: queryParams);
      break;
  }
}
