import 'package:flutter/material.dart';

class AboutusContent {
  String photo;
  String name;
  String description;

  AboutusContent({
    required this.photo,
    required this.name,
    required this.description,
  });
}

List<AboutusContent> contents = [
  AboutusContent(
    photo: 'assets/images/Abhay.png',
    name: ' Manandhar',
    description: "UI/UX Designer",
  ),
  AboutusContent(
    photo: 'assets/images/Bishaldai.png',
    name: 'Abhay Manandhar',
    description: "UI/UX Designer",
  ),
  AboutusContent(
    photo: 'assets/images/Bishaldai.png',
    name: 'Abhay ',
    description: "UI/UX ",
  ),
  AboutusContent(
    photo: 'assets/images/Abhay.png',
    name: 'Abhay Manandhar',
    description: "UI/UX Designer",
  ),
  AboutusContent(
    photo: 'assets/images/Abhay.png',
    name: 'Abhay Manandhar',
    description: "UI/UX Designer",
  ),AboutusContent(
    photo: 'assets/images/Abhay.png',
    name: 'Abhay Manandhar',
    description: "UI/UX Designer",
  ),


  // Add more content items as needed
];

class AboutusGrid extends StatelessWidget {
  final List<AboutusContent> contents;

  AboutusGrid({required this.contents});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2 ,
        mainAxisSpacing:8,
      ),
      itemCount: contents.length,
      itemBuilder: (context, index) {
        return GridItem(content: contents[index]);
      },
    );
  }
}


class GridItem extends StatelessWidget {
  final AboutusContent content;

  GridItem({required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            content.photo,
            height: 40,
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  content.name,
                  style: const TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    content.description,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
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
