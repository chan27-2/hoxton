import 'package:capital_app/ui/homepage/components/chart_sec.dart';
import 'package:capital_app/ui/homepage/components/fin_goals_sec.dart';
import 'package:capital_app/ui/homepage/components/header_sec.dart';
import 'package:capital_app/ui/homepage/components/recent_txn_sec.dart';
import 'package:capital_app/ui/homepage/components/top_user_section.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: MyThemePalette.backgroundDarkColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const SafeArea(
                child: HeaderHomePage(),
              ),
            ),
            const PerformanceChartSection(),
            const TopUsersSection(),
            SizedBox(height: 10),
            const RecentTxnSection(),
            SizedBox(height: 10),
            const SafeArea(
              top: false,
              bottom: true,
              child: FinGoalsSection(),
            ),
          ],
        ),
      ),
    );
  }
}
