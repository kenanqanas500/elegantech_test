import 'dart:developer';

import 'package:flutter_application_1/core/database/hive.dart';
import 'package:flutter_application_1/core/localization/local_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(const Locale(LocaleConfig.languageCodeEnglish));

  Future<void> loadSavedLanguage() async {
    final code = await HiveDB.singleTon.getLanguageCode();
    final locale = LocaleConfig.getLocaleByLanguageCode(code ?? LocaleConfig.languageCodeEnglish);

    emit(locale!);
  }

  Future<void> changeLanguage(String code) async {
    final locale = LocaleConfig.getLocaleByLanguageCode(code);
    if (locale != null) {
      await HiveDB.singleTon.setLanguageCode(code);
      emit(locale);
    }
  }
}
