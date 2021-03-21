import 'dart:math';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);

class Constants {
  //App related strings
  static String appName = 'Bookbot';

  static const regularHeading =
  TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black);

  static const boldHeading =
  TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600, color: Colors.black);

  static const regularDarkText =
  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black);

  static formatBytes(bytes, decimals) {
    if (bytes == 0) return 0.0;
    var k = 1024,
        dm = decimals <= 0 ? 0 : decimals,
        sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
        i = (log(bytes) / log(k)).floor();
    return (((bytes / pow(k, i)).toStringAsFixed(dm)) + ' ' + sizes[i]);
  }
}
