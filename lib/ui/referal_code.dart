import 'package:flutter/material.dart';

class ReferralCode extends StatefulWidget {
  @override
  _ReferralCodeState createState() => _ReferralCodeState();
}

class _ReferralCodeState extends State<ReferralCode> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Referral Code'),
        centerTitle: true,
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'SF0',
            ),
          ),
          new Divider(color: Colors.transparent),
          new FlatButton(
            color: Colors.deepOrangeAccent,
            onPressed: () =>
                Navigator.of(context).pushNamed('/member_registration'),
            child: new Text(
              'Submit',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
