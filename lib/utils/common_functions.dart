
import 'package:cricket/models/cricket/batsmen.dart';
import 'package:cricket/models/cricket/cricket.dart';
import 'package:cricket/models/cricket/fow.dart';
import 'package:cricket/models/cricket/partnership.dart';
import 'package:cricket/models/cricket/player.dart';

List<Fow> sortBatsmen(Cricket cricket, int winnerTeamId) {
  if (cricket.response.innings![0].battingTeamId == winnerTeamId) {
    List<Fow> batmenModelList = (cricket.response.innings![0].fows!);
    batmenModelList.sort((b, a) => (a.runs ?? 0).compareTo(b.runs ?? 0));
    return [batmenModelList[0], batmenModelList[1]];
  } else {
    List<Fow> batmenModelList = [];
    batmenModelList.addAll(cricket.response.innings![1].fows!);
    batmenModelList.sort((b, a) => (a.runs ?? 0).compareTo(b.runs ?? 0));
    return [batmenModelList[0], batmenModelList[1]];
  }
}

String getPlayerName(Cricket cricket, int playerId) {
  List<Player> playersList = cricket.response.players!;
  String playerName = '';

  for (Player player in playersList) {
    if (player.toJson()['player_id'] == playerId) {
      playerName = player.toJson()['name'];

      break;
    }
  }
  return playerName;
}

String strickRate(int runs, int balls) {
  return (runs / balls * 100).toStringAsFixed(2);
}

List<int> calculateBatsmenStatus(Cricket cricket, int playerId) {
  int totalFours = 0;
  int totalSixes = 0;

  List<Partnership> partnershipData = cricket
      .response
      .innings![cricket.response.innings![0].runs! >
              cricket.response.innings![1].runs!
          ? 0
          : 1]
      .statistics!
      .partnership!;

  for (Partnership partnership in partnershipData) {
    List<Batsmen> batsmen = partnership.toJson()['batsmen'];

    for (Batsmen batsman in batsmen) {
      if (batsman.toJson()['batsman_id'] == playerId) {
        totalFours += batsman.toJson()['fours'] as int;
        totalSixes += batsman.toJson()['sixes'] as int;
      }
    }
  }
  return [
    totalFours,
    totalSixes,
  ];
}
