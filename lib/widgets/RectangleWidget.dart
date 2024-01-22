import 'package:flutter/material.dart';

class MyRectangleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 200, // Adjust the height as needed
              decoration: const BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),

                ),
              ),
              child: const Center(child: Text(
                'True',
                style: TextStyle(
                  color: Color(0xFFF0F0F0),
                  fontSize: 20,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w600,
                  height: 0.03,
                  letterSpacing: 0.09,
                ),
              )),
            ),
          ),
          Expanded(
            child: Container(
              height: 200, // Adjust the height as needed
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),

                ),
              ),
              child: const Center(child: Text(
                'False',
                style: TextStyle(
                  color: Color(0xFFF0F0F0),
                  fontSize: 20,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w600,
                  height: 0.03,
                  letterSpacing: 0.09,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
