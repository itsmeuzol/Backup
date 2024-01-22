import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/widgets/appbar.dart';
import 'package:second_app/widgets/searchbar.dart';

String selectedValue = 'Easy';
String selectedHistory = "Recent";

class SavedCourse extends StatefulWidget {
  const SavedCourse({super.key});

  @override
  State<SavedCourse> createState() => _SavedCourseState();
}

class _SavedCourseState extends State<SavedCourse>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AppBarWithDrawer(
      title: 'Saved',
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(
                      child: Text(
                    "Courses",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  Tab(
                      child: Text(
                    "Blogs",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const CoursesPage(),
                  BlogsPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SearchBarWidget(),
          const SizedBox(
            height: 20,
          ),
          // Add your specific course content widgets here
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(2.0), // Adjust padding as needed
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromRGBO(
                            81, 62, 221, 0.1)), // Border color
                    borderRadius: BorderRadius.circular(4.0),
                    color:
                        const Color.fromRGBO(81, 62, 221, 0.48) // Border radius
                    ),
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.heart),
                    Text(
                      'Contribute',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // Add dropdown for 'Easy'
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton<String>(
                    value: selectedValue,
                    items: <String>['Easy', 'Medium', 'Hard']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value ??
                            'Easy'; // Set a default value if value is null
                      });
                    },
                  ),
                ],
              ),
              // Add dropdown for 'Recent'
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  DropdownButton<String>(
                    value: selectedHistory,
                    items: <String>['Recent', 'Oldest']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedHistory = value ?? "Recent";
                      });
                    },
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              _buildRectangle(
                "Write a program to display total \nsurface of a sphere",
                Image.asset(
                  "assets/images/Bishaldai.png",
                  height: 20,
                  width: 20,
                ),
                "Codynn",
                "Easy",
                "01",
              ),
              const SizedBox(
                  height: 16), // Adjust the space between rectangles as needed
              _buildRectangle(
                  "Write a program to display radius of \na circle",
                  Image.asset(
                    "assets/images/Bishaldai.png",
                    height: 20,
                    width: 20,
                  ),
                  "Dinga Vinga",
                  "Easy",
                  "02"),
              const SizedBox(height: 16),
              _buildRectangle(
                  "Write a program to display total \nsurface of a sphere",
                  Image.asset(
                    "assets/images/Bishaldai.png",
                    height: 20,
                    width: 20,
                  ),
                  "Dinga Vinga",
                  "Easy",
                  "03"),
            ],
          ),
        ],
      ),
    );
  }
}

class BlogsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        Text('Blogs Content'),
        // Add your specific blog content widgets here
      ],
    );
  }
}

Widget _buildRectangle(String content, Widget imagePath, String text,
    String level, String number) {
  return Column(
    children: [
      Container(
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
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      content,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Icon(CupertinoIcons.bookmark_fill),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  imagePath,
                  const SizedBox(width: 10),
                  Text(
                    text,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("80"),
                  const SizedBox(width: 15),
                  const Text("Level:"),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      selectedValue,
                      style: const TextStyle(
                        color: Colors
                            .blue, // You can set the color for the selectedValue part
                      ),
                    ),
                  ),
                  Text(
                    number,
                    style: const TextStyle(
                        fontSize: 15,
                        height: 1,
                        color: Color.fromRGBO(82, 62, 221, 2)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
