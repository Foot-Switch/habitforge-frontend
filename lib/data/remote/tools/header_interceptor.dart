import 'package:dio/dio.dart';
import 'package:habitforge_frontend/data/local/preferences/preference_handler.dart';
import 'package:package_info_plus/package_info_plus.dart';

class HeaderInterceptor extends InterceptorsWrapper {

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final packageInfo = await PackageInfo.fromPlatform();
    final userToken = await PreferenceHandler.getUserToken();
    final appVersion = packageInfo.version;
    options.headers.putIfAbsent("Accept", () => "application/json");
    options.headers.putIfAbsent("Content-Type", () => "application/json");
    options.headers.putIfAbsent("User-Token", () => appVersion);
    options.headers.putIfAbsent("App-Version", () => userToken);
    super.onRequest(options, handler);
  }
}
