import 'package:flutter/material.dart';

class Utils {
  static List<Widget> heightBetween(
    List<Widget> children, {
    required double height,
  }) {
    if (children.isEmpty) return <Widget>[];
    if (children.length == 1) return children;

    final list = [children.first, SizedBox(height: height)];
    for (int i = 1; i < children.length - 1; i++) {
      final child = children[i];
      list.add(child);
      list.add(SizedBox(height: height));
    }
    list.add(children.last);

    return list;
  }
}

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}


Widget appBarStyle() {
  return Container(
    decoration: const BoxDecoration(
        
        color: Color(0xffF5591F),
        gradient: LinearGradient(
          colors: [(Color(0xffF5591F)), (Color(0xffF2861E))],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
  );
}
