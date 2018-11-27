import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:spiritual_foundation_app/ui/daily_quotes.dart';
import 'package:spiritual_foundation_app/ui/home.dart';
import 'package:spiritual_foundation_app/ui/home_menu/PrayerTimes.dart';
import 'package:spiritual_foundation_app/ui/home_menu/contact_info.dart';
import 'package:spiritual_foundation_app/ui/home_menu/daily_videos.dart';
import 'package:spiritual_foundation_app/ui/home_menu/projects_update.dart';
import 'package:spiritual_foundation_app/ui/home_menu/question_answers.dart';
import 'package:spiritual_foundation_app/ui/login.dart';
import 'package:spiritual_foundation_app/ui/member_registration.dart';
import 'package:spiritual_foundation_app/ui/referal_code.dart';
import 'package:spiritual_foundation_app/ui/splash_screen.dart';
import 'package:spiritual_foundation_app/ui/user_profile.dart';

void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent),
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/member_registration': (BuildContext context) =>
            new MemberRegistration(),
        '/referral_code': (BuildContext context) => new ReferralCode(),
        '/Home_screen': (BuildContext context) => new Login(),
        '/home': (BuildContext context) => new Home(),
        '/daily_quotes': (BuildContext context) => new DailyQuotes(),
        '/user_profile': (BuildContext context) => new UserProfile(),
        '/daily_videos': (BuildContext context) => new DailyVideos(),
        '/q_as': (BuildContext context) => new QuestionAnswers(),
        '/projects_updates': (BuildContext context) => new ProjectsUpdate(),
//        '/calender': (BuildContext context) => new IslamicCalendar(),
        '/calender': (_) => new WebviewScaffold(
              url: "https://www.absa.co.za/personal/",
              appBar: new AppBar(
                title: new Text("Calendar"),
                centerTitle: true,
              ),
            ),
        '/prayer_times': (BuildContext context) => new PrayerTimes(),
        '/contact_info': (BuildContext context) => new ContactInfo(),
      },
    );
  }
}
