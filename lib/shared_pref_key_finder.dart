import 'package:singleton/key_finder_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefKeyFinder implements KeyFinder {
  SharedPreferences _instance;

  SharedPrefKeyFinder() {
    SharedPreferences.getInstance().then((SharedPreferences instance) {
      _instance = instance;
      // Just initializing something so that it can be fetched.
      _instance.setString("Stock", "I am from Shared Preference");
    });
  }

  String getKeyValue(String key) {
    return _instance?.getString(key) ??
        'shared preference is not yet initialized';
  }

  void setKeyValue(String key, String value) {
    //final SharedPreferences prefs = await SharedPreferences.getInstance();
    //prefs.setInt('counter', 123);
    _instance?.setString(key, value);
  }
  /*
  void removeKey(String key){
    _instance?.remove(key);
  }

  void clearKey() {
     _instance?.clear();
  }
  */
}

KeyFinder getKeyFinder() => SharedPrefKeyFinder();