import 'package:flutter/material.dart';

class HamDrawer extends StatefulWidget {
  const HamDrawer({super.key});


  @override
  State<HamDrawer> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HamDrawer> {
  bool isDrawerOpen = false;

  get color1 => const Color.fromRGBO(84, 115, 231, 1);
  get color2 => const Color.fromRGBO(101, 92, 225, 1);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style:  const TextStyle(color: Colors.white, fontSize: 16),
      child: Scaffold(
        body: Stack(
        children: [
          // Main content
          // Sidebar (Drawer)
          if (isDrawerOpen)
            Container(
              width: MediaQuery.of(context).size.width *
                  0.8, // Adjust the width as needed
              decoration:  BoxDecoration(
                gradient: LinearGradient(colors: [color1,color2])
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Close button at the top
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            setState(() {
                              isDrawerOpen = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  // Drawer items
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Abhay.png'), // Replace with your actual photo path
                      radius: 25, // Adjust the radius as needed
                    ),
                    title: Text('Abhay Manandhar', style: TextStyle(color: Colors.white),),
                    subtitle: Text('m.avaymdr@gmail.com', style: TextStyle(color: Colors.white)), // Your email here
                    contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 1.0, // Adjust the thickness as needed
                  )
                  ,
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      // Handle Home Click
                      _onItemTapped(0);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.book),
                    title: const Text('Courses'),
                    onTap: () {
                      // Handle Business Click
                      _onItemTapped(1);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.book_rounded),
                    title: const Text('Blog'),
                    onTap: () {
                      // Handle School Click
                      _onItemTapped(2);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.chalet),
                    title: const Text('Challenges'),
                    onTap: () {
                      // Handle School Click
                      _onItemTapped(3);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      // Handle School Click
                      _onItemTapped(3);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.person),
                    title: const Text('Accounts'),
                    onTap: () {
                      // Handle School Click
                      _onItemTapped(4);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.leaderboard),
                    title: const Text('Leaderboard'),
                    onTap: () {
                      // Handle School Click
                      _onItemTapped(5);
                    },
                  ),


                  // Add more ListTile items as needed
                  // Spacer to push the buttons to the bottom
                  const Spacer(),
                  // Back button at the bottom
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white, // Set the background color to white
                          borderRadius: BorderRadius.circular(8.0), // Optional: Add border radius
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isDrawerOpen = false;
                            });
                          },
                          child: const Text('Back'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
      // Hamburger icon to open the drawer
    )
    );
  }

  void _onItemTapped(int index) {
    // Handle item tap here
    // For example, you can navigate to a new page or update the content
    print('Item $index tapped');
  }
}
