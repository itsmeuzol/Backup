import 'package:flutter/material.dart';
import 'package:second_app/screens/courses_pages/content.dart';
import 'package:second_app/screens/login_page.dart';
import 'package:second_app/widgets/appbar.dart';


class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CourseState();
}

class _CourseState extends State<Courses> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBarWithDrawer(title: 'Courses',
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 5.0),
              const Padding(
                padding: EdgeInsets.only(
                    top: 0.0, bottom: 0.0, left: 20.0, right: 20.0),
              ),
              Expanded(
                child: PageView.builder(
                    itemCount: contents.length,
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (_, i) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            // Text(
                            //   contents[i].text,
                            //     style: const TextStyle(
                            // fontSize: 14, color: Colors.black)
                            // ),
                            Slider(
                              value: currentIndex.toDouble(),
                              onChanged: (value) {
                                setState(() {
                                  currentIndex = value.toInt();
                                });
                              },
                              min: 0,
                              max: contents.length - 1,
                              divisions: contents.length - 1,
                              activeColor: Colors.blue,
                              inactiveColor: Colors.grey,
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              contents[i].upperDiscription,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                            ),
                            const SizedBox(height: 30),
                            Image.asset(contents[i].image),
                            const SizedBox(
                              height: 60,
                            ),
                            Text(
                              contents[i].lowerDiscription,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Container(
                height: 55,
                margin:
                const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 40),
                width: 400.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF5040DE),
                ),
                child: TextButton(
                  child: Text(
                    currentIndex == contents.length - 1 ? "Next" : "Continue",
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginDemo()));
                    }
                    _controller.nextPage(
                        duration: const Duration(microseconds: 100),
                        curve: Curves.bounceIn);
                  },
                ),
              ),
            ],
          ),
        ),);
  }
}


