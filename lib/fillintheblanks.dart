import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/widgets/topappbar.dart';

class FillBlanks extends StatefulWidget {
  @override
  State<FillBlanks> createState() => _FillBlanksState();
}

class _FillBlanksState extends State<FillBlanks> {
  double rating = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TopAppBar(),
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
                const Align(
                  alignment: FractionalOffset(0.1, 0.1),
                  child: Text(
                    'printf(" ")',
                    style: TextStyle(fontSize: 18),
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
                Container(
                  height: 300,
                  width: 400,
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Container(
                          child: const Center(
                            child: Text(
                              '%d',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Container(
                          child: const Center(
                            child: Text(
                              '%d',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Container(
                          child: const Center(
                            child: Text(
                              '%d',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      // Repeat the same pattern for the other options
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
