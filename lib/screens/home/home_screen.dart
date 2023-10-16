import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controllers/menu_controller.dart';
import '../../responsive.dart';
import './components/side_menu.dart';
import '../dashboard/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: SideMenu()),
            Expanded(flex: 5, child: DashboardScreen())
          ],
        ),
      ),
    );
  }
}
