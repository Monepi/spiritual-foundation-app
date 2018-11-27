import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _bottomNavBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          Center(
            child:
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlatButton(
                    onPressed: () => Navigator.of(context).pushNamed("/daily_videos"),
                    child: new Column(
                      children: <Widget>[ new Icon(
                        Icons.video_library,
                        color: Colors.amberAccent,
                        size: 60.0,
                      ),
                      new Divider(color: Colors.transparent),
                      new Text('Daily Videos', style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ))
                      ],
                    )),
              ],
            ),
          ),
          Center(child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                  onPressed: () => Navigator.of(context).pushNamed("/q_as"),
                  child: new Column(
                    children: <Widget>[ new Icon(
                      Icons.question_answer,
                      color: Colors.lightBlue,
                      size: 60.0,
                    ),
                    new Divider(color: Colors.transparent),
                    new Text("Q & A's", style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ))
                    ],
                  )
              )
            ],
          ),),
          Center(child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                  onPressed: () => Navigator.of(context).pushNamed("/projects_updates"),
                  child: new Column(
                    children: <Widget>[
                      new Icon(
                        Icons.sync,
                        color: Colors.blueGrey,
                        size: 60.0,
                      ),
                      new Divider(color: Colors.transparent),
                      new Text(
                        'Projects', style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  )
              ),
            ],
          ),),
          Center(child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                  onPressed: () => Navigator.of(context).pushNamed("/calender"),
                  child: new Column(
                    children: <Widget>[
                      new Icon(
                        Icons.calendar_today,
                        color: Colors.redAccent,
                        size: 60.0,
                      ),
                      new Divider(color: Colors.transparent),
                      new Text(
                          'Calendar', style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ))
                    ],
                  )
              )
            ],
          ),),
          Center(child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                  onPressed: () => Navigator.of(context).pushNamed("/prayer_times"),
                  child: new Column(
                    children: <Widget>[
                      new Icon(
                        Icons.timer,
                        color: Colors.black26,
                        size: 60.0,
                      ),
                      new Divider(color: Colors.transparent),
                      new Text(
                          'Prayer times', style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      )
                      )
                    ],
                  )
              )
            ],
          ),),
          Center(child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(
                  onPressed: () => Navigator.of(context).pushNamed("/contact_info"),
                  child: new Column(
                    children: <Widget>[
                      new Icon(
                        Icons.contacts,
                        color: Colors.green,
                        size: 60.0,
                      ),
                      new Divider(color: Colors.transparent),
                      new Text(
                          'Contact Info', style: TextStyle(
                          color: Colors.deepOrangeAccent,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold
                      ))
                    ],
                  )
              )
            ],
          ),),
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
            if (index != 0) {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, "/home");
                  break;
                case 1:
                  Navigator.of(context).pop();
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

