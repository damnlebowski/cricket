import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/models/cricket/inning.dart';
import 'package:cricket/utils/common_functions.dart';
import 'package:cricket/utils/widgets.dart';
import 'package:flutter/material.dart';

import 'common_expansion_tile_widget.dart';

class ExpansionBowlerWidget extends StatelessWidget {
  const ExpansionBowlerWidget({
    super.key,
    required this.innings,
    required this.cricket,
  });

  final Inning innings;
  final Cricket cricket;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return index == 0
                ? const ExpansionListtitleWidget(
                    isBatsmen: false,
                  )
                : Row(
                    children: [
                      kWidth10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(getPlayerName(
                              cricket, innings.fows![index - 1].batsmanId!)),
                          Text(
                            innings.fows![index - 1].howOut!,
                            style: const TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Text(
                                  innings.fows![index - 1].runs!.toString())),
                          kWidth10,
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Text(innings.fows![index - 1].ballsFaced!
                                  .toString())),
                          kWidth10,
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Text(calculateBatsmenStatus(cricket,
                                      innings.fows![index - 1].batsmanId!)[0]
                                  .toString())),
                          kWidth10,
                          SizedBox(
                              height: 20,
                              width: 20,
                              child: Text(calculateBatsmenStatus(cricket,
                                      innings.fows![index - 1].batsmanId!)[1]
                                  .toString())),
                          kWidth10,
                          SizedBox(
                              height: 20,
                              width: 25,
                              child: Text(strickRate(
                                  innings.fows![index - 1].runs!,
                                  innings.fows![index - 1].ballsFaced!))),
                          kWidth10,
                        ],
                      )
                    ],
                  );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 4),
    );
  }
}
