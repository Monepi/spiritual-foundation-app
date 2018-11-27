
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    var _bottomNavBarIndex = 2;
    return new Scaffold(
      appBar: new AppBar(
        title: const Text("User Profile"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: null,
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.chat),
            title: new Text('Daily Quotes')
        ),
        new BottomNavigationBarItem(
            icon: new Icon(Icons.account_circle),
            title: new Text('Profile')
        ),
      ],
          currentIndex: _bottomNavBarIndex,
          onTap: (int index) {
            setState(() {
              _bottomNavBarIndex = index;
            });
            if (index != 2) {
              switch (index) {
                case 0:
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/home");
                  break;
                case 1:
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/daily_quotes");
                  break;
                case 2:
                  Navigator.pushNamed(context, "/user_profile");
                  break;
              }
            }
          }),
    );
  }
}
