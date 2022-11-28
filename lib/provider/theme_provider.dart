import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:theming_app/models/dark_theme_preferences.dart';

class ThemeProvider with ChangeNotifier {
  DarkThemePreferences darkThemePreferences = DarkThemePreferences();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreferences.setDarkTheme(value);
    notifyListeners();
  }
}
