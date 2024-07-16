import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:habitforge_frontend/common/event_bus.dart';
import 'package:habitforge_frontend/data/remote/tools/error_interceptor.dart';

const _codeKey = "code";
const _descriptionKey = "description";

class ErrorHandler {
  static Future init() async {
    errorEventBus.on<ErrorResponse>().listen((error) {
      if (error.response != null)
        _handleError(error.response!);
      else
        _showNoInternetConnectionWarning();
    });
  }

  static void _handleError(Response response) {
    final errorCode = response.data[_codeKey];
    final errorMessage = response.data[_descriptionKey];
    switch (errorCode) {
      // TODO: handle global errors
    }
  }

  static Future<bool?> _showNoInternetConnectionWarning() =>
      Fluttertoast.showToast(msg: "No Internet Connection", toastLength: Toast.LENGTH_LONG);
}
