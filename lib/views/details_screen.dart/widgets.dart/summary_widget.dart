import 'package:cricket/models/cricket/batsmen.dart';
import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/models/cricket/fow.dart';
import 'package:cricket/models/cricket/partnership.dart';
import 'package:cricket/models/cricket/player.dart';
import 'package:cricket/utils/common_functions.dart';
import 'package:cricket/utils/widgets.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.cricket,
    required this.winnerTeamId,
  });

  final Cricket cricket;
  final int winnerTeamId;

  @override
  Widget build(BuildContext context) {
    Fow player1 = sortBatsmen(cricket, hashCode)[0];
    Fow player2 = sortBatsmen(cricket, winnerTeamId)[1];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            elevation: 5,
            child: Row(children: [
              kWidth10,
              ColWidget(
                  c1: 'Batsmen',
                  c2: getPlayerName(cricket, player1.batsmanId!),
                  c3: getPlayerName(cricket, player2.batsmanId!),
                  crossAlign: CrossAxisAlignment.start),
              const Spacer(),
              ColWidget(
                  c1: 'R',
                  c2: player1.runs.toString(),
                  c3: player2.runs.toString(),
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
              ColWidget(
                  c1: 'B',
                  c2: player1.ballsFaced.toString(),
                  c3: player2.ballsFaced.toString(),
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
              ColWidget(
                  c1: '4s',
                  c2: calculateBatsmenStatus(cricket, player1.batsmanId!)[0]
                      .toString(),
                  c3: calculateBatsmenStatus(cricket, player2.batsmanId!)[0]
                      .toString(),
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
              ColWidget(
                  c1: '6s',
                  c2: calculateBatsmenStatus(cricket, player1.batsmanId!)[1]
                      .toString(),
                  c3: calculateBatsmenStatus(cricket, player2.batsmanId!)[1]
                      .toString(),
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
              ColWidget(
                  c1: 'Sr',
                  c2: strickRate(sortBatsmen(cricket, winnerTeamId)[0].runs!,
                      player1.ballsFaced!),
                  c3: strickRate(sortBatsmen(cricket, winnerTeamId)[1].runs!,
                      player2.ballsFaced!),
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            elevation: 5,
            child: Row(children: const [
              kWidth10,
              ColWidget(
                  c1: 'Bowlers',
                  c2: 'Rohit',
                  c3: 'Ishan',
                  crossAlign: CrossAxisAlignment.start),
              Spacer(),
              ColWidget(
                  c1: 'O',
                  c2: '45',
                  c3: '12',
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
              ColWidget(
                  c1: 'M',
                  c2: '45',
                  c3: '12',
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
              ColWidget(
                  c1: 'R',
                  c2: '45',
                  c3: '12',
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
              ColWidget(
                  c1: 'W',
                  c2: '45',
                  c3: '12',
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
              ColWidget(
                  c1: 'Eco',
                  c2: '45',
                  c3: '12',
                  crossAlign: CrossAxisAlignment.center),
              kWidth20,
            ]),
          ),
        ),
        kHight10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            elevation: 5,
            child: Row(
              children: [
                kWidth10,
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    'Player of The Match',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(.5)),
                  ),
                  kHight10,
                  Text(
                    getPlayerName(cricket, player1.batsmanId!),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  kHight10,
                  Text(
                    '${player1.runs}R (${player1.ballsFaced})b',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black.withOpacity(.5)),
                  ),
                  kHight10,
                ]),
                const Spacer(),
                SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset('assests/user.png')),
                kWidth20
              ],
            ),
          ),
        ),
        kHight10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            elevation: 5,
            child: Row(children: [
              kWidth10,
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    kHight10,
                    Text('Date'),
                    kHight10,
                    Text('Toss'),
                    kHight10,
                  ]),
              const Spacer(),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                kHight10,
                const Text('10:00 AM Sunday, June 04, 2023'),
                kHight10,
                Text(
                    '${cricket.response.teams![0].teamId == winnerTeamId ? cricket.response.teams![0].name : cricket.response.teams![1]} won the toss and opt to bat'),
                kHight10,
              ]),
              kWidth10,
            ]),
          ),
        )
      ],
    );
  }
}

class ColWidget extends StatelessWidget {
  const ColWidget({
    super.key,
    required this.c1,
    required this.c2,
    required this.c3,
    required this.crossAlign,
  });
  final String c1;
  final String c2;
  final String c3;
  final CrossAxisAlignment crossAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAlign,
      children: [
        kHight10,
        Text(c1),
        kHight10,
        Text(c2),
        kHight10,
        Text(c3),
        kHight20,
      ],
    );
  }
}
