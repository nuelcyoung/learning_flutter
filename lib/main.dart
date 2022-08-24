import 'package:flutter/material.dart';
import 'package:training/routes/router.dart';
import 'package:training/utils/textscale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      builder: fixTextScale,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
      //title: 'Flutter Demo',
      //home: Splash(),

    );
  }
}

