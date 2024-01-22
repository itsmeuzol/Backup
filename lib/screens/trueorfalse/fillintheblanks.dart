import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/screens/trueorfalse/gridbox.dart';
import 'package:second_app/widgets/appbar.dart';

class FillBlanks extends StatefulWidget {
  @override
  State<FillBlanks> createState() => _FillBlanksState();
}

class _FillBlanksState extends State<FillBlanks> {
  double rating = 0.0;
   final TextStyle _textStyle = const TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Outfit', fontWeight: FontWeight.w400, height: 0.07, letterSpacing: 0.17);
  String placeholder1 = '';
  String placeholder2 = '';
  @override
  Widget build(BuildContext context) {
    return AppBarWithDrawer(title: "Courses",
        body: Column(
          children: [
            Slider(
              value: rating,
              onChanged: (newRating) {
                setState(() => rating = newRating);
              },
              min: 0,
              max: 50,
              divisions: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Fill in the blanks',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22),
                    decoration: ShapeDecoration(
                      color: Color(0xFFF6F6F7),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Row(
                      children: [
                        Text('printf(" ', style: _textStyle),
                        const SizedBox(width: 30),
                        _roundedContainer(placeholder1),
                        const SizedBox(width: 20),
                        const Text('",'),
                        const SizedBox(width: 0),
                        _roundedContainer(placeholder2),
                        const SizedBox(width: 16),
                        Text(');', style: _textStyle),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  const Divider(height: 2,),
                  const SizedBox(height: 40.0),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Drag & drop to output the character A to the screen.',
                      style: TextStyle(fontSize:18,fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,),
                    ),
                  ),
                ],
              ),
            ),
            buildGrid((value) {
              setState(() {
                if (placeholder1.isEmpty) {
                  placeholder1 = value;
                } else if (placeholder2.isEmpty) {
                  placeholder2 = value;
                }
              });
            },
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle Back button press
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(
                          width: 3,
                          color: Color(0xDD876CF7), // Set the border color
                        ),// Adjust the border radius as needed
                      ),
                      foregroundColor: Color(0xFF513EDD),
                      fixedSize: Size(110,45),

                    ),
                    child: const Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Next button press
                      // You can implement your navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
                      ),
                      fixedSize: const Size(226,45),
                      foregroundColor: Colors.white,
                      backgroundColor: const Color(0xFF513EDD),
                    ),
                    child: const Text('Next'),
                  ),
                ],
              ),
            ),
          ],
        ),);
  }

  GestureDetector _roundedContainer(String text) {
    return GestureDetector(
      onTap: (

      ){
        setState(() {
          placeholder1="";
          placeholder2="";
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 15),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFFFBFBFB),
          shape: RoundedRectangleBorder(side: const BorderSide(width: 1.50, color: Color(0xFF513EDD)), borderRadius: BorderRadius.circular(4)),
        ),
        child: Text(
          text,
            style: _textStyle
        ),
      ),
    );
  }
}

