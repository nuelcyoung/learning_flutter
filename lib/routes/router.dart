
import 'package:flutter/material.dart';
import 'package:training/screens/home.dart';
import 'package:training/screens/splash/splash.dart';

Map<String, Widget Function(BuildContext)> routes = {'/': (context) => const Splash(),
'/home': (context)=>const Home()};
