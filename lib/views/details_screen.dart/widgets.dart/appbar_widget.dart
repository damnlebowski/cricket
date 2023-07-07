
import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/utils/colors.dart';
import 'package:flutter/material.dart';

import 'ball_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.cricket,
    required this.winnerTeamId,
  });

  final Cricket cricket;
  final int winnerTeamId;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: darkBlue,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assests/profile.png'),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.menu_rounded,
                          color: darkBlue,
                          size: 8,
                        )),
                  )
                ],
              ),
              const SizedBox(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                        image: AssetImage('assests/joystick.png'))),
                height: 30,
                width: 30,
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.white,
                      ),
                    ),
                    height: 35,
                    width: 80,
                    child: const Center(
                      child: Text(
                        '0000',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 0,
                    top: 6,
                    child: CircleAvatar(
                      backgroundColor: darkBlue,
                      radius: 12,
                      child: Icon(
                        Icons.account_balance_wallet,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                  height: 40, width: 40, child: Image.asset('assests/bell.png'))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    cricket.response.teams![0].teamId == winnerTeamId
                        ? cricket.response.teams![0].logoUrl!
                        : cricket.response.teams![1].logoUrl!),
                radius: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cricket.response.teams![0].shortName!,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${cricket.response.innings![1].runs}(${cricket.response.innings![1].overs})',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              const Text('Complete', style: TextStyle(color: Colors.white)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(cricket.response.teams![1].shortName!,
                      style: const TextStyle(color: Colors.white)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '${cricket.response.innings![0].runs}(${cricket.response.innings![0].overs})',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    cricket.response.teams![0].teamId != winnerTeamId
                        ? cricket.response.teams![0].logoUrl!
                        : cricket.response.teams![1].logoUrl!),
                radius: 25,
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                  cricket.response.teams![0].teamId == winnerTeamId
                      ? '${cricket.response.teams![0].shortName} Won'
                      : '${cricket.response.teams![1].shortName} Won',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              const Spacer(),
              const Text('Last 6 Ball',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              'By ${getWinner()} Runs',
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const Spacer(),
            const BallWidget(text: '1', color: Colors.white, backgroundColor: null),
            const BallWidget(
                text: '4', color: Colors.black, backgroundColor: Colors.white),
            const BallWidget(
                text: 'W', color: Colors.white, backgroundColor: Colors.black),
            const BallWidget(
                text: '6', color: Colors.black, backgroundColor: Colors.white),
            const BallWidget(text: 'LB', color: Colors.white, backgroundColor: null),
            const BallWidget(text: '', color: null, backgroundColor: null),
            const SizedBox(
              width: 10,
            ),
          ]),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }

  getWinner() {
    if (cricket.response.innings![0].battingTeamId == winnerTeamId) {
      return cricket.response.innings![0].runs! -
          cricket.response.innings![1].runs!;
    } else {
      return cricket.response.innings![1].runs! -
          cricket.response.innings![0].runs!;
    }
  }
}
