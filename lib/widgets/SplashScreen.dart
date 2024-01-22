import 'package:flutter/material.dart';
import 'package:second_app/screens/intro_pages/onbording.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(const Duration(seconds: 10));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Onbording()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
    body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300, width:300,
            child: Image.asset("assets/images/splashlogo.png"),
          ),
          const Column(
            children: [
              Text('© Copyright Dinga Vinga 2023', style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              ),
            ],
          ),
        ],
      ),
    ),
    );
  }
}
