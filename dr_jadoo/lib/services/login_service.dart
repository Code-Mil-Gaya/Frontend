import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:dr_jadoo/constants/colours.dart';
import 'package:dr_jadoo/core/popup_service.dart';
import 'package:dr_jadoo/core/rest_client.dart';
import 'package:flutter/material.dart';
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

  Future<bool> logIn(BuildContext context, String userName, String password) async {
    var body = <String, String>{
      "email": userName, 
      "password": password
    };
    var response = await restClient.post(
      '${EnvConstants.host}/api/token/',
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Accept': '*/*',
      },
      body: body
    );
    
    final Map<String, dynamic> data = response;
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
