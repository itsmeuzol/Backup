import 'package:flutter/material.dart';
import '../main.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40.0),
            const Padding(
              padding: EdgeInsets.only(top: 60.0),
              child: Text(
                "Log in / Sign Up",
                style: TextStyle(
                    color:Color.fromRGBO(81, 62, 221,1),
                fontSize: 30.0,
                fontFamily:'Montserrat',fontWeight: FontWeight.bold,),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                    ),
                  ),
                  )
                ],
              ),
            ),
             const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3.0),
                  SizedBox(
                    height: 40.0,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          labelText: 'Password',
                    ),
                  ),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: const Row(
                children: [
                  SizedBox(width:240),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(81, 62, 221,1), borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyApp()));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border:Border.all(
                    color: Colors.deepPurpleAccent,
                    width: 3,
                  )),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyApp()));
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Color.fromRGBO(81, 62, 221,1), fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "You can also sign in with",
                  style: TextStyle(fontSize: 16,
                    fontFamily: 'Montserrat',
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Google Logo
                Image.asset(
                  'assets/images/google_logo.png',
                  width: 70,
                  height: 70,
                  // Adjust width and height as needed
                ),
                const SizedBox(height: 100,width: 30), // Add some spacing between logos
                // GitHub Logo
                Image.asset(
                  'assets/images/github_logo.png',
                  width: 70,
                  height: 70,
                  // Adjust width and height as needed
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
