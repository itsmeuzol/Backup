import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:second_app/widgets/topappbar.dart';
import '../../widgets/leadprofile.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TopAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 5.0),
                // Who we are section
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Who we are?",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.71,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    // Description section
                    Text(
                      "Welcome to void Nepal, your trusted partner, including education at void Nepal. We are passionate about empowering individuals with the skills they need to succeed in today's digital world. Our mission is to make coding and computer science, education, accessible to all, regardless of age, background, or experience.",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),

                // Our Founder section
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Our Founder",
                    style: TextStyle(
                      fontSize: 15.71,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Image.asset('assets/images/Bishaldai.png'),
                    const SizedBox(width: 15.0),
                    // Founder details
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bishal Khadka',
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Founder/Chairman',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    // LinkedIn icon
                    GestureDetector(
                      onTap: () {
                        // Handle the click event, e.g., navigate to a URL
                      },
                      child: Image.asset(
                        'assets/images/Linkedin.png',
                        width: 100, // Adjust the width as needed
                        height: 100, // Adjust the height as needed
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 20.0),

                // Meet the Leads section
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Meet the Lead",
                    style: TextStyle(
                      fontSize: 15.71,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 350,
                  width: 400,
                  child: LeadProfile(),
                ),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Meet the team",
                    style: TextStyle(
                      fontSize: 15.71,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 350,
                  width: 400,
                  child: LeadProfile(),
                ),

                const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'About Us',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'At Voidnepal , our story is a tale of passion, innovation, and a deep commitment to empower ingindividuals through coding education. '),
                  ],
                ),
              ]),
            )),
      ),
    );
  }
}
