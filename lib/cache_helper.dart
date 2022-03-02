import 'package:shared_preferences/shared_preferences.dart';
class CacheHelper
{
static SharedPreferences sharedPreferences;
static init()async{
  sharedPreferences=await SharedPreferences.getInstance();
}
static Future<bool> putBoolian(String key, bool value)async{
  return sharedPreferences.setBool(key, value);
}
static bool getboolian(String key){
  return sharedPreferences.get(key);
}
}