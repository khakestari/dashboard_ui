import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

import 'screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Admin Panel',
        theme: ThemeData.dark().copyWith(),
        // home: MultiProvider(
        //   providers: [],
        //   child: HomeScreen(),
        // ),
        home: HomeScreen());
  }
}
