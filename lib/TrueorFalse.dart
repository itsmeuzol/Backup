import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/widgets/RectangleWidget.dart';

class TrueorFalse extends StatefulWidget {
  const TrueorFalse({super.key});

  @override
  State<TrueorFalse> createState() => _TrueorFalseState();
}

class _TrueorFalseState extends State<TrueorFalse> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const
        Align(
          child: Text('Choose True or False'),
        )
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                width: 349,
                height: 94,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                    side: const BorderSide(
                      color: Colors.white, // Change the color of the border as needed
                      width: 2.0, // Change the width of the border as needed
                    ),
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
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage("assets/images/Bishaldai.png"), height: 50, width: 50),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text("True or False"),
                            Text('JavaScirpt'),
                            Text('4/6 lessons')
                          ],
                        ),
                       Spacer(),
                        Image(image: AssetImage("assets/images/Bishaldai.png"), height: 50, width: 50),
                      ],
                    ),
                  ],
                )
                ),
                SizedBox(height: 100),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Text(
                        "Declare a variable ‘x’ and assign value 10 \n"
                            "Use square brackets to create a list, and \n"
                            "separate each element with a comma.\n"
                            "VALUE IS 10",
                        style: TextStyle(
                          height: 3,
                        ),
                      ),
                    ],
                  ),

                ),
                SizedBox(height: 88.8),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0x4C513EDD), // Adjust the color as needed
                      width: 1,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "?",
                      style: TextStyle(
                        fontSize: 24, // Adjust the font size as needed
                        color: Colors.black, // Adjust the color as needed
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                //For Question mark

              ],
            ),
          ),
          MyRectangleWidget()
        ],
      ),
    );
  }
}
