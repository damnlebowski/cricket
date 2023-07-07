import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/models/cricket/inning.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import 'batsmen_expansion_list.dart';
import 'bowllers_expansion_list.dart';

class Expansion extends StatelessWidget {
  const Expansion({
    super.key,
    required this.innings,
    required this.cricket,
  });

  final Inning innings;
  final Cricket cricket;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(innings.name!),
      controlAffinity: ListTileControlAffinity.leading,
      trailing: Container(
        height: 25,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: darkBlue),
        child: Center(
            child: Text(
          '${innings.runs}/${innings.wickets} (${innings.overs}ov)',
          style: const TextStyle(color: Colors.white),
        )),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ExpansionBatsmenWidget(innings: innings, cricket: cricket),
              ExpansionBowlerWidget(innings: innings, cricket: cricket)
            ],
          ),
        ),
      ],
    );
  }
}
