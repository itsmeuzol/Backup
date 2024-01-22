import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/widgets/appbar.dart';
import 'package:second_app/widgets/bottom_nav.dart';

class Sections extends StatefulWidget {
  const Sections({Key? key}) : super(key: key);

  @override
  State<Sections> createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarWithDrawer(),
      body: Column(
        children: [
          SizedBox(height: 10.0),
          CustomSection(
            image: "assets/images/Rectangle.png",
            text: "True or False",
          ),
          CustomSection(
            image: 'assets/images/Rectangle.png',
            text: 'True or False',
          ),
          CustomSection(
            image: 'assets/images/Rectangle.png',
            text: 'True or False',
          )
        ],
      ),
    );
  }
}

class CustomSection extends StatelessWidget {
  final String image;
  final String text;

  const CustomSection({
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        height: 190.70,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF4B83EC), Color(0xFF6053E0)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.75),
          ),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
