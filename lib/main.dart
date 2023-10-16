import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './controllers/menu_controller.dart';
import 'screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData.dark(useMaterial3: true).copyWith(),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => MenuAppController())
        ],
        child: HomeScreen(),
      ),
    );
  }
}
