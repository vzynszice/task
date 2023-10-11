import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app2/core/constants/enum/preferences/preferences_keys.dart';

class LocaleManager {
  static final LocaleManager _instance = LocaleManager._init();
  static LocaleManager get instance => _instance;
  SharedPreferences? _preferences;
  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }
  static Future preferencesInit() async {
    _instance._preferences ??= await SharedPreferences.getInstance();
    return;
  }

  Future<void> clearAll() async {
    preferencesInit();
    await _preferences!.clear();
  }

  Future<void> setStringValue(PreferencesKeys key, String value) async {
    preferencesInit();
    await _preferences!.setString(key.toString(), value);
  }

  String? getStringValue(PreferencesKeys key) {
    preferencesInit();
    return _preferences!.getString(key.toString()) ?? "";
  }

  Future<void> saveStringItems(PreferencesKeys key, List<String> value) async {
    preferencesInit();
    await _preferences?.setStringList(key.name, value);
  }

  List<String>? getStrings(PreferencesKeys key) {
    //vb tutma
    preferencesInit();
    return _preferences?.getStringList(key.name);
  }
}
