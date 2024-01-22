import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/widgets/appbar.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return AppBarWithDrawer(title: 'Profile',
        body:Container(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/images/Bishaldai.png', height: 100, width: 100),
                  // Description on the right
                  const SizedBox(width:20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Abhay Manandhar',
                          style: TextStyle(
                            fontSize: 15.5,
                            fontWeight: FontWeight.bold,
                          )
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'manandharabhay@gmail.com',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height:30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('Courses', style: TextStyle(color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                          height: 0.07,),),
                        Spacer(),
                        Text('Enrolled |', style: TextStyle(
                            decoration: TextDecoration.underline
                        ),),
                        Text(' Completed'),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        const Text('Dive into the world of HTML \nlooping'),
                        Spacer(),
                        Container(
                          decoration:  ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1.5, color: Color(0xFF5213DA)),
                              borderRadius: BorderRadius.circular(3.04),

                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(3.0),
                            child: Text('Load more'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25.0),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('About', style: TextStyle(color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                          height: 0.07,),),
                        SizedBox(height:15.0),
                        Text('Bio is empty so i need to fill it right now i don’t know what to write here so please don’t mind.'),
                      ],
                    ),



                    SizedBox(height:10.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          2, // Adjust the number of blue boxes as needed
                              (index) => Container(
                            margin: EdgeInsets.all(8.0),
                            height: 130,
                            width: 240,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(56, 118, 235, 1.0),
                                  Color.fromRGBO(81, 62, 221, 1.0),
                                ],
                                stops: [0.1871, 0.929],
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage('assets/images/discord.png'),
                                        fit: BoxFit.cover,
                                        height: 40,
                                        width: 50,
                                      ),
                                      SizedBox(width: 80),
                                      Row(
                                        children: [
                                          Image(
                                            image: AssetImage('assets/images/codynlogo.png'),
                                            fit: BoxFit.contain,
                                            height: 20,
                                            width: 30,
                                          ),
                                          Text(
                                            'Codynn',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Join our discord \nServer',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11.86,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //Contribution section starts from here.
                    const SizedBox(height:15.0),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Contribution', style: TextStyle(color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w600,
                              height: 0.07,)),
                            Spacer(),
                            Text('Show All', style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromRGBO(81, 62, 221, 1),
                            ),),
                          ],
                        ),
                        SizedBox(height:10.0),
                        Text('Variable question'),
                        Text('Level: Easy', style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height:20.0),
                        Row(
                          children: [
                            Text('Contribution', style: TextStyle(color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Outfit',
                              fontWeight: FontWeight.w600,
                              height: 0.07,)),
                            Spacer(),
                            Text('Show All', style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color.fromRGBO(81, 62, 221, 1),
                            ),),
                          ],
                        ),
                        SizedBox(height:10.0),
                        Text('Herald college Kathmandu'),
                        Text('Bachelor degreee', style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
