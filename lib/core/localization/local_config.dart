import 'package:flutter/material.dart';

class LocaleConfig {
  static const String languageCodeEnglish = 'en';
  static const String languageCodeArabic = 'ar';
  static List<String> getSupportedLanguageCodes() {
    return supportedLocales.map((locale) => locale.languageCode).toList();
  }

  static const List<Locale> supportedLocales = [Locale(languageCodeEnglish), Locale(languageCodeArabic)];

  static Locale? getLocaleByLanguageCode(String code) {
    try {
      return supportedLocales.firstWhere(
        (locale) => locale.languageCode == code,
        orElse: () => throw ArgumentError('Unsupported language code: $code'),
      );
    } catch (e) {
      return null;
    }
  }

  static String getLanguageName(String code) {
    switch (code) {
      case languageCodeArabic:
        return 'العربية';
      case languageCodeEnglish:
        return 'English';
      default:
        return 'Unknown';
    }
  }
}
