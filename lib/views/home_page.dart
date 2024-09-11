import 'package:flutter/material.dart';
import 'dart:math';
import '../components/choice_button.dart';
import '../components/computer_choice_display.dart';
import '../components/result_display.dart';
import '../components/score_board.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  JokenpoChoice? playerChoice;
  JokenpoChoice? computerChoice;
  String resultMessage = '';
  int playerWins = 0;
  int computerWins = 0;
  int draws = 0;

  JokenpoChoice getComputerChoice() {
    return JokenpoChoice.values[Random().nextInt(JokenpoChoice.values.length)];
  }

  String determineWinner(JokenpoChoice playerChoice, JokenpoChoice computerChoice) {
    if (playerChoice == computerChoice) {
      draws++;
      return 'Empate!';
    }

    switch (playerChoice) {
      case JokenpoChoice.pedra:
        if (computerChoice == JokenpoChoice.tesoura) {
          playerWins++;
          return 'Você venceu!';
        } else {
          computerWins++;
          return 'Computador venceu!';
        }
      case JokenpoChoice.papel:
        if (computerChoice == JokenpoChoice.pedra) {
          playerWins++;
          return 'Você venceu!';
        } else {
          computerWins++;
          return 'Computador venceu!';
        }
      case JokenpoChoice.tesoura:
        if (computerChoice == JokenpoChoice.papel) {
          playerWins++;
          return 'Você venceu!';
        } else {
          computerWins++;
          return 'Computador venceu!';
        }
    }
  }

  void playGame(JokenpoChoice choice) {
    setState(() {
      playerChoice = choice;
      computerChoice = getComputerChoice();
      resultMessage = determineWinner(playerChoice!, computerChoice!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faça sua jogada'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 40, 179, 235),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoiceButton(choice: JokenpoChoice.pedra, onSelect: playGame),
                ChoiceButton(choice: JokenpoChoice.papel, onSelect: playGame),
                ChoiceButton(choice: JokenpoChoice.tesoura, onSelect: playGame),
              ],
            ),
            Container(
              margin: EdgeInsets.all(30.0),
              child: Text(
                'Jogada do Computador',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ComputerChoiceDisplay(choice: computerChoice),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Resultado',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ResultDisplay(resultMessage: resultMessage),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: Text(
                'Placar',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ScoreBoard(
              playerWins: playerWins,
              computerWins: computerWins,
              draws: draws,
            ),
          ],
        ),
      ),
    );
  }
}
