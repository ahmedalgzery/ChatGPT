import 'package:shared_preferences/shared_preferences.dart';

// class Helper {
//   static String key = 'key';

// // Write DATA
// static Future saveUserData(value) async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     return await sharedPreferences.setString(key, value);
//   }

// // Read Data
// static Future getUserData() async {
//     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     return sharedPreferences.getString(key);
//   }
// }
// class Helper {
//   static String key = "auth_token";

// //set data into shared preferences like this
//   static Future<void> saveUserData(String authToken) async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     prefs.setString(key, authToken);
//   }

// //get value from shared preferences
//   static Future<String?> getUserData() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     String? authToken;
//     authToken = pref.getString(key);
//     return authToken;
//   }
// }

class Helper
{
   static SharedPreferences? sharedPreferences;

  static init() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future saveUserData({
  required String key,
  required String value,
}) async
  {
    return await sharedPreferences!.setString(key, value);
  }

  static String? getUserData({
    required String key,
  })
  {
    return sharedPreferences?.getString(key);
  }
}