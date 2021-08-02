import 'package:flutter/material.dart';
import 'package:ratecourse/courselists/coursedata.dart';
import 'package:ratecourse/pages/home.dart';
import 'package:ratecourse/pages/login.dart';
import 'package:ratecourse/pages/register.dart';
import 'package:ratecourse/pages/registersample.dart';
import 'package:ratecourse/pages/submitreview.dart';
import 'package:ratecourse/utils/routes.dart';
import 'package:ratecourse/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.courseRoute: (context) => CourseData(),
        MyRoutes.regisRoute: (context) => RegisSample(),
        MyRoutes.reviewRoute: (context) => SubmitReview(),
      },
    );
  }
}
