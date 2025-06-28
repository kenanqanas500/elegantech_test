// import 'dart:developer' as dev;

import 'package:colorize/colorize.dart';
import 'package:flutter_application_1/app/features/login/model/user_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

class HiveDB {
  HiveDB._();
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
    ),
  );
  static HiveDB _singleTon = HiveDB._();
  static HiveDB get singleTon => _singleTon;

  // ✅ Add this
  static set singleTon(HiveDB instance) {
    _singleTon = instance;
  }

  static const String _hallIdBox = 'hallBox';
  static const String _hallIdKey = 'hallKey';

  static const String _serverBox = 'serverBox';
  static const String _serverKey = 'serverIp';
  static const String _tokenBox = 'authBox';
  static const String _tokenKey = 'token';

  static const String _userBox = 'userBox';
  static const String _userKey = 'userKey';

  static const String _customerNameBox = 'customerNameBox';
  static const String _customerNameKey = 'customerNameKey';
  static const String _tableBox = 'tableBox';
  static const String _tableKey = 'tableKey';
  static const String _tableIdBox = 'tableIdBox';
  static const String _tableIdKey = 'tableIdKey';
  static const String _hallNameBox = 'hallNameBox';
  static const String _hallNameKey = 'hallNameKey';
  static const String _languageBox = 'languageBox';
  static const String _languageKey = 'languageCode';

  Future<void> initializeHive() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);

    Hive.registerAdapter(UserModelAdapter());
    // Hive.registerAdapter(CaptainModelAdapter());

    await Future.wait([
      Hive.openBox(_hallIdBox),
      Hive.openBox(_serverBox),
      Hive.openBox(_tokenBox),
      Hive.openBox(_userBox),
      // Hive.openBox(_captainBox),
      Hive.openBox(_tableBox),
      Hive.openBox(_tableIdBox),
      Hive.openBox(_hallNameBox),
      Hive.openBox(_languageBox),
      Hive.openBox(_customerNameBox),
    ]);

    _monitorBox(_hallIdBox);
    _monitorBox(_serverBox);
    _monitorBox(_tokenBox);
    _monitorBox(_userBox);
    // _monitorBox(_captainBox);
    _monitorBox(_tableBox);
    _monitorBox(_tableIdBox);
    _monitorBox(_hallNameBox);
    _monitorBox(_languageBox);
    _monitorBox(_customerNameBox);

    _logger.i(Colorize("✨ Hive Initialized and All Boxes Opened, stored at => ${appDocumentDirectory.path}")
        .green());
  }

  Future<void> _openBox(String boxName) async {
    await Hive.openBox(boxName);
  }

  void _monitorBox(String boxName) {
    var box = Hive.box(boxName);
    box.watch().listen((event) {
      String operation;
      String message;

      if (!box.containsKey(event.key)) {
        operation = "DB_INSERT";
        message = '✅ [$operation] Box=$boxName, Key=${event.key}, Value=${event.value}';
        _logger.i(Colorize(message).green());
      } else if (event.value == null) {
        operation = "DB_DELETE";
        message = '❌ [$operation] Box=$boxName, Key=${event.key}, Value=${event.value}';
        _logger.i(Colorize(message).green());
      } else {
        operation = "DB_UPDATE";
        message = '📝 [$operation] Box=$boxName, Key=${event.key}, New Value=${event.value}';
        _logger.i(Colorize(message).green());
      }
    });
  }

  Future<void> setHallId({required int? hallId}) async {
    await Hive.box(_hallIdBox).put(_hallIdKey, hallId);
  }

  Future<int?> getHallId() async {
    return Hive.box(_hallIdBox).get(_hallIdKey);
  }

  Future<String> getTableName() async {
    return Hive.box(_tableBox).get(_tableKey);
  }

  Future<String?> getTableId() async {
    return Hive.box(_tableIdBox).get(_tableIdKey) as String?;
  }

  Future<void> setTableId(String newValue) async {
    await Hive.box(_tableIdBox).put(_tableIdKey, newValue);
  }

  Future<String> getCustomerName() async {
    return Hive.box(_customerNameBox).get(_customerNameKey) as String;
  }

  Future<void> setCustomerName(String newValue) async {
    await Hive.box(_customerNameBox).put(_customerNameKey, newValue);
  }

  Future<void> setTableName(String newValue) async {
    await Hive.box(_tableBox).put(_tableKey, newValue);
  }

  Future<void> deleteString(String boxName, String key) async {
    await Hive.box(boxName).delete(key);
  }

  Future<void> setServerIp(String serverIp) async {
    await Hive.box(_serverBox).put(_serverKey, serverIp);
  }

  Future<String?> getServerIp() async {
    return Hive.box(_serverBox).get(_serverKey) as String?;
  }

  Future<void> setHallName(String hallName) async {
    await Hive.box(_hallNameBox).put(_hallNameKey, hallName);
  }

  Future<String?> getHallName() async {
    return Hive.box(_hallNameBox).get(_hallNameKey) as String?;
  }

  Future<String?> getToken() async {
    if (!Hive.isBoxOpen(_tokenBox)) {
      await _openBox(_tokenBox);
    }
    return Hive.box(_tokenBox).get(_tokenKey) as String?;
  }

  Future<void> setToken(String newToken) async {
    await Hive.box(_tokenBox).put(_tokenKey, newToken);
  }

  Future<void> clearToken() async {
    await Hive.box(_tokenBox).delete(_tokenKey);
  }

  // Future<void> setCaptain(CaptainModel captain) async {
  //   await Hive.box(_captainBox).put(_captainKey, captain);
  // }

  // Future<CaptainModel?> getCaptain() async {
  //   return Hive.box(_captainBox).get(_captainKey) as CaptainModel?;
  // }

  Future<void> setUser(UserModel user) async {
    await Hive.box(_userBox).put(_userKey, user);
  }

  Future<UserModel?> getUser() async {
    return Hive.box(_userBox).get(_userKey) as UserModel?;
  }

  Future<void> setLanguageCode(String code) async {
    await Hive.box(_languageBox).put(_languageKey, code);
  }

  Future<String?> getLanguageCode() async {
    return Hive.box(_languageBox).get(_languageKey) as String?;
  }
}
