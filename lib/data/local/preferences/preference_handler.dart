import 'package:shared_preferences/shared_preferences.dart';

class PreferenceHandler {
  static const userTokenKey = "userTokenKey";

  static void setUserToken(String userToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(userTokenKey, userToken);
  }

  static Future<String?> getUserToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userTokenKey);
  }

  static void clearPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(userTokenKey);
  }
}
