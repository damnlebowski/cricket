import 'package:cricket/utils/widgets.dart';
import 'package:flutter/material.dart';

class ExpansionListtitleWidget extends StatelessWidget {
  const ExpansionListtitleWidget({
    super.key,
    required this.isBatsmen,
  });

  final bool isBatsmen;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth10,
        SizedBox(
            height: 30,
            child: Center(child: Text(isBatsmen ? 'Batsmen' : 'Bowlers'))),
        const Spacer(),
        Row(
          children: [
            SizedBox(height: 20, width: 20, child: Text(isBatsmen ? 'R' : 'O')),
            kWidth10,
            SizedBox(height: 20, width: 20, child: Text(isBatsmen ? 'B' : 'M')),
            kWidth10,
            SizedBox(
                height: 20, width: 20, child: Text(isBatsmen ? '4s' : 'R')),
            kWidth10,
            SizedBox(
                height: 20, width: 20, child: Text(isBatsmen ? '6S' : 'W')),
            kWidth10,
            SizedBox(
                height: 20, width: 25, child: Text(isBatsmen ? 'S/R' : 'Eco')),
            kWidth10,
          ],
        )
      ],
    );
  }
}
