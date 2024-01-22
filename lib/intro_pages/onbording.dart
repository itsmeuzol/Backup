import 'package:flutter/material.dart';
import '../widgets/bottom_nav.dart';
import 'content_model.dart';
import 'package:second_app/screens/login_page.dart';


class Onbording extends StatefulWidget {
  const Onbording({super.key});
  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
      children: [
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
                      const SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: List.generate(
                              contents.length,
                                  (index) => buildDot(index, context),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              if (currentIndex < contents.length - 1) {
                                _controller.jumpToPage(contents.length - 1);
                              }
                              else{
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNav()));
                              }
                            },
                            child: Text(
                              currentIndex == contents.length - 1 ? 'Finish' : 'Skip',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),

                        ],
                      )
                      ,
                      const SizedBox(height: 50.0),
                      Text(
                        contents[i].title,
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 50),
                      Image.asset(contents[i].image),
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        contents[i].discription,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.white),
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
                const EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 50),
            width: 400.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF5040DE),
            ),
            child: TextButton(
              child: Text(
                currentIndex == contents.length - 1 ? "Continue" : "Next",
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const BottomNav()));
                }
                _controller.nextPage(
                    duration: const Duration(microseconds: 100),
                    curve: Curves.bounceIn);
              },
            )),
      ],
    ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
    );
  }
}
