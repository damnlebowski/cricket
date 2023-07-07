import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/utils/colors.dart';
import 'package:cricket/views/details_screen.dart/widgets.dart/appbar_widget.dart';
import 'package:cricket/views/details_screen.dart/widgets.dart/bottom_nav_bar_widget.dart';
import 'package:cricket/views/details_screen.dart/widgets.dart/score_card_widget.dart';
import 'package:cricket/views/details_screen.dart/widgets.dart/summary_widget.dart';
import 'package:cricket/views/report_screen/report_screen.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.cricket});

  final Cricket cricket;

  late int winnerTeamId;
  late int looserTeamId;

  @override
  Widget build(BuildContext context) {
    checkWinnerAndLooser();
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, 220),
            child: AppBarWidget(cricket: cricket, winnerTeamId: winnerTeamId)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TabBar(
                labelColor: darkBlue,
                unselectedLabelColor: Colors.grey,
                indicatorColor: darkBlue,
                tabs: [
                  Tab(
                    text: 'Summary',
                  ),
                  Tab(text: 'ScoreCard'),
                  Tab(text: 'Report'),
                ]),
            Expanded(
              child: TabBarView(children: [
                Summary(cricket: cricket, winnerTeamId: winnerTeamId),
                ScoreCard(cricket: cricket, winnerTeamId: winnerTeamId),
                const ReportPage(),
              ]),
            )
          ],
        ),
        bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }

  checkWinnerAndLooser() {
    if (cricket.response.innings![0].runs! >
        cricket.response.innings![1].runs!) {
      winnerTeamId = cricket.response.innings![0].battingTeamId!;
      looserTeamId = cricket.response.innings![0].fieldingTeamId!;
    } else {
      winnerTeamId = cricket.response.innings![1].battingTeamId!;
      looserTeamId = cricket.response.innings![1].fieldingTeamId!;
    }
  }
}
