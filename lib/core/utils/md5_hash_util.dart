import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';

String encryptToMd5(String input) {
  // Convert the input string to a list of bytes using UTF-8 encoding.
  final content = const Utf8Encoder().convert(input);

  // Compute the MD5 hash of the bytes.
  final md5Digest = md5.convert(content);

  // Convert the MD5 digest to a hexadecimal string.
  return md5Digest.toString();
}

String encryptWithHmacMd5(String input, String key) {
  final keyBytes = utf8.encode(key); // تحويل المفتاح إلى bytes
  final inputBytes = utf8.encode(input); // تحويل النص إلى bytes

  final hmac = Hmac(md5, keyBytes); // إنشاء HMAC باستخدام MD5 والمفتاح
  final digest = hmac.convert(inputBytes);

  return base64.encode(digest.bytes); // تحويل الناتج إلى Base64
}

// String hmacMd5Base64(String input, String key) {
//   final keyBytes = utf8.encode(key);
//   final messageBytes = utf8.encode(input);

//   final hmac = Hmac(md5, keyBytes);
//   final digest = hmac.convert(messageBytes);

//   return base64Encode(digest.bytes); // هذا ما تحتاجه لمطابقة قاعدة البيانات
// }
