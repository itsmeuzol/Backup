import 'package:flutter/material.dart';
import '../screens/aboutus_page/aboutus.dart';
import '../screens/courses_pages/courses.dart';
import '../screens/home.dart';
import '/intro_pages/onbording.dart';
import '../screens/login_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
   int myIndex = 0;
  List<Widget> widgetList = [
       const home(),
       const Courses(),
       LoginDemo(),
      const AboutUs(),
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[myIndex],
      ),
      backgroundColor: Colors.white,
      // body: IndexedStack(
      //   index: myIndex,
      //   children: widgetList,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30.0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 30.0),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report),
            label: 'Challenges',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30.0),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
