import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget _buildRectangle(String content) {
  return Container(
    width: 350,
    height: 149,
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(width: 1, color: Color(0x42513EDD)),
        borderRadius: BorderRadius.circular(12),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x16000000),
          blurRadius: 7,
          offset: Offset(3, 4),
          spreadRadius: 0,
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text(
                  content,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 70),
                const Icon(CupertinoIcons.bookmark_fill),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
