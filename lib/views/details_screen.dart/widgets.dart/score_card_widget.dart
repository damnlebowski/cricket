import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/views/details_screen.dart/widgets.dart/expansion_tile_widget.dart';
import 'package:flutter/material.dart';

class ScoreCard extends StatelessWidget {
  ScoreCard({super.key, required this.cricket, required this.winnerTeamId});

  final Cricket cricket;
  final int winnerTeamId;

  IconData changeableIcon = Icons.keyboard_arrow_down;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Expansion(
            innings: cricket.response.innings![0].battingTeamId == winnerTeamId
                ? cricket.response.innings![0]
                : cricket.response.innings![1],
            cricket: cricket,
          ),
          Expansion(
            innings: cricket.response.innings![0].battingTeamId != winnerTeamId
                ? cricket.response.innings![0]
                : cricket.response.innings![1],
            cricket: cricket,
          ),
        ],
      ),
    );
  }
}


