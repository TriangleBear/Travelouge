import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray200 = fromHex('#9dcfca');

  static Color blueGray400 = fromHex('#888888');

  static Color teal30003 = fromHex('#4f9dbf');

  static Color teal30001 = fromHex('#4b9a9e');

  static Color teal30002 = fromHex('#4f9cbb');

  static Color teal1009e = fromHex('#9ea8d1e8');

  static Color lightBlue900 = fromHex('#00628a');

  static Color teal100 = fromHex('#a8d1e8');

  static Color teal300 = fromHex('#4c9c9e');

  static Color black900 = fromHex('#000000');

  static Color teal700 = fromHex('#1c7379');

  static Color teal900 = fromHex('#135150');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrange100 = fromHex('#ffbfc3');

  static Color teal300A7 = fromHex('#a74c9c9e');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
