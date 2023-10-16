import 'package:dashboard_ui/responsive.dart';
import 'package:flutter/material.dart';

import './components/header.dart';
import '../../constants.dart';
import './components/storage_details.dart';
import './components/my_files.dart';
import './components/recent_files.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    MyFiles(),
                    SizedBox(height: defaultPadding),
                    RecentFiles(),
                    if (!Responsive.isMobile(context))
                      SizedBox(height: defaultPadding),
                    if (!Responsive.isMobile(context)) StorageDetails()
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
