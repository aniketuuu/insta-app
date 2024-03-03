import 'package:app/screens/homepage.dart';
import 'package:app/screens/loginpage.dart';
import 'package:app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Insta_studyJam',
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => Loginpage(),
          MyRoutes.HomepageRoutes: (context) => Homepage(),
        });
  }
}
