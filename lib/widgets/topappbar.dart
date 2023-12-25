import 'package:flutter/material.dart';

class TopAppBar extends StatefulWidget implements PreferredSizeWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  _TopAppBarState createState() => _TopAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TopAppBarState extends State<TopAppBar> {
  bool isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, size: 35),
          onPressed: _toggleDrawer,
        ),
        actions: [
          Spacer(),
          IconButton(
            icon: Image.asset('assets/images/smallJS.png'),
            onPressed: () {},
          ),
          Spacer(),
          const Icon(Icons.bookmark_add_outlined, size: 35.0),
        ],
      ),
      body: Stack(
        children: [
          // Main content

          // Sidebar (Drawer)
          if (isDrawerOpen)
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(84, 115, 231, 1),
                  Color.fromRGBO(101, 92, 225, 1),
                ]),
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
                      backgroundImage: AssetImage('assets/images/Abhay.png'),
                      radius: 25,
                    ),
                    title: Text(
                      'Abhay Manandhar',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'm.avaymdr@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  ),
                  const Divider(
                    color: Colors.white,
                    thickness: 1.0,
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      _onItemTapped(0);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.book),
                    title: const Text('Courses'),
                    onTap: () {
                      _onItemTapped(1);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.book_rounded),
                    title: const Text('Blog'),
                    onTap: () {
                      _onItemTapped(2);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.chalet),
                    title: const Text('Challenges'),
                    onTap: () {
                      _onItemTapped(3);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      _onItemTapped(3);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.person),
                    title: const Text('Accounts'),
                    onTap: () {
                      _onItemTapped(4);
                    },
                  ),
                  ListTile(
                    textColor: Colors.white,
                    leading: const Icon(Icons.leaderboard),
                    title: const Text('Leaderboard'),
                    onTap: () {
                      _onItemTapped(5);
                    },
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
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
    );
  }

  void _onItemTapped(int index) {
    // Handle item tap here
    // For example, you can navigate to a new page or update the content
    print('Item $index tapped');
  }
}
