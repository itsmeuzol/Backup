import 'package:flutter/material.dart';

Widget createCustomBox(String text, ValueChanged<String> onTap) {
  return GestureDetector(
    onTap: () => onTap(text),
    child: Container(
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0x07513EDD),
        border: Border.all(width: 1, color: Color(0xFF513EDD)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Widget buildGrid(ValueChanged<String> onBoxClick) {
  return SizedBox(
    height: 200, // Adjust the height as needed
    width: 350, // Adjust the width as needed
    child: GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 30.0, // Adjust the vertical gap
      crossAxisSpacing: 20.0, // Adjust the horizontal gap
      childAspectRatio: 340 / 250, //Adjust the box size
      children: [
        createCustomBox('%d1', onBoxClick),
        createCustomBox('%d2', onBoxClick),
        createCustomBox('%d3', onBoxClick),
        createCustomBox('%d4', onBoxClick),
        createCustomBox('%d5', onBoxClick),
        createCustomBox('%d6', onBoxClick),
      ],
    ),
  );
}
