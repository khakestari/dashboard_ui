import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(),
            Expanded(
                child: Drawer(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DrawerHeader(
                      child: SvgPicture.asset("assets/images/logo.svg"),
                    ),
                    DrawerListTile(
                      title: "Dashboard",
                      svgSrc: "assets/icons/menu_dashboard.svg",
                      press: () {},
                    ),
                    DrawerListTile(
                      title: "Transaction",
                      svgSrc: "assets/icons/menu_tran.svg",
                      press: () {},
                    ),
                    DrawerListTile(
                      title: "Task",
                      svgSrc: "assets/icons/menu_task.svg",
                      press: () {},
                    ),
                    DrawerListTile(
                      title: "Documents",
                      svgSrc: "assets/icons/menu_doc.svg",
                      press: () {},
                    ),
                    DrawerListTile(
                      title: "Store",
                      svgSrc: "assets/icons/menu_store.svg",
                      press: () {},
                    ),
                    DrawerListTile(
                      title: "Notification",
                      svgSrc: "assets/icons/menu_notification.svg",
                      press: () {},
                    ),
                    DrawerListTile(
                      title: "Profile",
                      svgSrc: "assets/icons/menu_profile.svg",
                      press: () {},
                    ),
                    DrawerListTile(
                      title: "Settings",
                      svgSrc: "assets/icons/menu_setting.svg",
                      press: () {},
                    ),
                  ],
                ),
              ),
            )),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {super.key,
      required this.title,
      required this.svgSrc,
      required this.press});
  final String title, svgSrc;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        height: 16,
        // ignore: deprecated_member_use
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
