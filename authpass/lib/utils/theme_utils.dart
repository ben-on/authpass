import 'package:flutter/material.dart';

class ThemeUtil {
  static Color iconColor(ThemeData theme, Color? fileColor) {
    return fileColor ?? (theme.isDarkTheme ? Color.fromARGB(226, 216, 212, 212) : const Color.fromARGB(115, 214, 212, 212));
  }
}

extension ThemeDataExt on ThemeData {
  bool get isDarkTheme => brightness == Brightness.dark;

  Color iconColor(Color? fileColor) => ThemeUtil.iconColor(this, fileColor);
}
