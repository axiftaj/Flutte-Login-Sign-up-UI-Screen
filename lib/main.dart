import 'package:flutter/material.dart';
import 'package:login_speed_code/constants/constants.dart';
import 'package:login_speed_code/login_scren.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: const Color(0xffF8F9FA),

        appBarTheme: const  AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
                color: Colors.black
            ),
            backgroundColor:  Color(0xffF8F9FA) ,
            titleTextStyle:  TextStyle(
                fontSize: 18, color: primaryColor,
                fontFamily: 'Avenir Heavy')
        ),
        fontFamily: 'SF_Pro_Display',
        textTheme: const TextTheme(
            headline1: TextStyle( fontSize: 32, fontFamily: 'Avenir Heavy' , color: Color(0xff8F92A1)),
            headline2:  TextStyle(fontSize: 17),
            headline3: TextStyle(fontSize: 16),
            headline4: TextStyle(fontSize: 14),
            headline5: TextStyle(fontSize: 12),
            headline6: TextStyle( fontSize: 16, fontFamily: 'Avenir Roman' , color: secondaryTextColor ),

            bodyText1: TextStyle( fontSize: 16, fontFamily: 'Avenir Heavy' , color: secondaryTextColor ),
            bodyText2: TextStyle( fontSize: 14, fontFamily: 'Avenir Roman' , color: secondaryTextColor ),

            subtitle1: TextStyle( fontSize: 18, fontFamily: 'Avenir Heavy' , color: primaryTextTextColor ),
            subtitle2: TextStyle( fontSize: 14, fontFamily: 'Avenir Medium' , color: primaryTextTextColor ),

            caption: TextStyle(fontSize: 9.5)),
      ),
      home:  LoginScreen(),
    );
  }
}

// Let start