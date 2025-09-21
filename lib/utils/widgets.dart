import 'package:flutter/material.dart';

Widget textBuild({
  required String text,
  required double fontSize,
  required Color color,
  FontWeight fontWeight = FontWeight.normal,
  TextAlign textAlign = TextAlign.left,
  int maxLines = 1,
  TextOverflow overFlow = TextOverflow.fade,
}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight),
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overFlow,
  );
}
