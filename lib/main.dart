import 'package:flutter/material.dart';
import 'package:medium/Views/Colors.dart';

import 'Views/explore.dart';
import 'Views/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  List pages = [HomePage(), ExplorePage()];
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(pageindex),
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 2,
        onTap: navigate,
        currentIndex: pageindex,
        backgroundColor: backgroundColor,
        selectedItemColor: secondaryColor,
        unselectedItemColor: unselectedLabelColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'bookmarks',
            icon: Icon(Icons.bookmarks),
          ),
          BottomNavigationBarItem(
            label: 'stars',
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/236x/35/ec/6a/35ec6a40365ebe25cf1ebc173a857efa.jpg"),
            ),
          ),
        ],
      ),
    );
  }
  
  navigate( int index) {
    setState(() {
      pageindex = index;
    });
  }
}
