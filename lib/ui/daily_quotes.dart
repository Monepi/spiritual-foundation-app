
import 'package:flutter/material.dart';

class DailyQuotes extends StatefulWidget {
  @override
  _DailyQuotesState createState() => _DailyQuotesState();
}

class _DailyQuotesState extends State<DailyQuotes> {
  @override
  Widget build(BuildContext context) {

    var _bottomNavBarIndex = 1;

    return new Scaffold(
      appBar: new AppBar(
        title: const Text("Daily Quotes"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),

      body: new Column(
        children: <Widget>[

        ],
      ),

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
            if (index != 1) {
              switch (index) {
                case 0:
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/home");
                  break;
                case 1:
                  Navigator.pushNamed(context, "/daily_quotes");
                  break;
                case 2:
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/user_profile");
                  break;
              }
            }
          }),
    );
  }
}
