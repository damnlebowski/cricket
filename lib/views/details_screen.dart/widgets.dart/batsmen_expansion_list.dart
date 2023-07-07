import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/models/cricket/inning.dart';
import 'package:cricket/views/details_screen.dart/widgets.dart/common_expansion_tile_widget.dart';
import 'package:flutter/material.dart';

import '../../../utils/common_functions.dart';
import '../../../utils/widgets.dart';

class ExpansionBatsmenWidget extends StatelessWidget {
  const ExpansionBatsmenWidget({
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
                ? ExpansionListtitleWidget(
                    isBatsmen: true,
                  )
                : index == innings.fows!.length + 1
                    ? Row(
                        children: [
                          kWidth10,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Extra'),
                              Text(
                                'Total',
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                      "4 (b ${innings.statistics!.extras![0].value}, w ${innings.statistics!.extras![1].value}, nb ${innings.statistics!.extras![2].value}, lb ${innings.statistics!.extras![3].value})"),
                                  Text(
                                      "${innings.runs}/${innings.wickets}  (${innings.overs})"),
                                ],
                              ),
                              kWidth10
                            ],
                          )
                        ],
                      )
                    : Row(
                        children: [
                          kWidth10,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(getPlayerName(cricket,
                                  innings.fows![index - 1].batsmanId!)),
                              Text(
                                innings.fows![index - 1].howOut!,
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Text(innings.fows![index - 1].runs!
                                      .toString())),
                              kWidth10,
                              SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Text(innings
                                      .fows![index - 1].ballsFaced!
                                      .toString())),
                              kWidth10,
                              SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Text(calculateBatsmenStatus(
                                          cricket,
                                          innings
                                              .fows![index - 1].batsmanId!)[0]
                                      .toString())),
                              kWidth10,
                              SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Text(calculateBatsmenStatus(
                                          cricket,
                                          innings
                                              .fows![index - 1].batsmanId!)[1]
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
            return Divider();
          },
          itemCount: innings.fows!.length + 2),
    );
  }
}
