import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int playerWins;
  final int computerWins;
  final int draws;

  const ScoreBoard({
    required this.playerWins,
    required this.computerWins,
    required this.draws,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      width: MediaQuery.of(context).size.width * 0.75,
      height: 100,
      margin: EdgeInsets.all(10),
      child: Center(
        child: Text(
          'Player: $playerWins | Pc: $computerWins | Draw: $draws',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
