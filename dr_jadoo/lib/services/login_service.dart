import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/constants.dart';

class LoginService {
  static LoginService? _instance;
  String? authToken;

  static LoginService get instance {
    _instance ??= LoginService();
    return _instance!;
  }

  Future<bool> logIn(String userName, String password) async {
    var response = await post(Uri.parse('${EnvConstants.host}/api/token'),
        body: {"email": userName, "password": password});

    final Map<String, String> data = json.decode(response.body);
    if (data.containsKey('access')) {
      authToken = data['access'];
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('token', authToken!);
      return true;
    } else {
      return false;
    }
  }
}
