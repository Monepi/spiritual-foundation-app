import 'dart:async';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: const Text('Login'),
          centerTitle: true,
        ),

        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter username'
              ),
            ),

            new TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter password',
              ),
            ),

            new Divider(color: Colors.transparent),

            new FlatButton(
                color: Colors.deepOrangeAccent,
                onPressed: () =>
                  Navigator.of(context).pushNamed('/home'),
                child: new Text('Login', style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),)
            ),

            new Divider(color: Colors.transparent),

            new FlatButton(
                child: new Text('Not a member? Click to Register.'),
                onPressed: () =>
                  Navigator.of(context).pushNamed('/referral_code')
            ),

            new FlatButton(
                onPressed: () {_beingMemberInfo();},
                child: new Text('Benefits of being a member...'),
              textColor: Colors.grey,
            )

          ],
        ),

      );
  }

  _beingMemberInfo() {
    showDialog(
      context: context,
      barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text('Spiritual Foundation App'),
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  new Text('Text... text.'),
                  new Text('Text... text.'),
                ],
              ),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
    );
  }

}
