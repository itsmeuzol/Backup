import 'package:flutter/material.dart';

class LeadProfile extends StatefulWidget {
  const LeadProfile({Key? key}) : super(key: key);

  @override
  State<LeadProfile> createState() => _LeadProfileState();
}

class _LeadProfileState extends State<LeadProfile> {
  @override
  Widget build(BuildContext context) {
    final myImageAndCaption = [
      {"image": "assets/images/Abhay.png", "name": "Abhay Manandhar", "role": "UI/UX Designer"},
      {"image": "assets/images/Bishaldai.png", "name": "Abhay Manandhar", "role": "Role2"},
      {"image": "assets/images/Abhay.png", "name": "Abhay Manandhar", "role": "Role3"},
      {"image": "assets/images/Abhay.png", "name": "Abhay Manandhar", "role": "Role4"},
      {"image": "assets/images/Abhay.png", "name": "Abhay Manandhar", "role": "Role5"},
      {"image": "assets/images/Abhay.png", "name": "Abhay Manandhar", "role": "Role6"},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.count(
        childAspectRatio: 1/1.3,
        crossAxisCount: 3,
        children: myImageAndCaption.map((data) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Material(
                  shape: const CircleBorder(),
                  child: Image.asset(
                    data["image"]!,
                    fit: BoxFit.fitWidth,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Column(
                    children: [
                      Text(data["name"]!, style: const TextStyle(fontWeight: FontWeight.bold),),
                      Text(data["role"]!, style: const TextStyle(fontSize: 12.0)),
                    ],
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}

