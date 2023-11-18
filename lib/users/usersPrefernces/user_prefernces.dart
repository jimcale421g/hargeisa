import 'dart:convert';

import 'package:hargeisa/users/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberUserPrefs
{
  static Future <void> saveRememberUser(User userinfo) async
  {

SharedPreferences preferences = await SharedPreferences.getInstance();
 String userJsonData = jsonEncode(userinfo.toJson());
 await preferences.setString("currentUser", userJsonData);
  }

}