import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'choice_button.dart';  // Importando o enum JokenpoChoice

class ComputerChoiceDisplay extends StatelessWidget {
  final JokenpoChoice? choice;

  const ComputerChoiceDisplay({this.choice, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageUrl = '';
    if (choice != null) {
      switch (choice!) {
        case JokenpoChoice.pedra:
          imageUrl = 'https://wesraiuga.github.io/games/assets/img/jokenpo/jokenpo-user-pedra.png';
          break;
        case JokenpoChoice.papel:
          imageUrl = 'https://wesraiuga.github.io/games/assets/img/jokenpo/jokenpo-user-papel.png';
          break;
        case JokenpoChoice.tesoura:
          imageUrl = 'https://wesraiuga.github.io/games/assets/img/jokenpo/jokenpo-user-tesoura.png';
          break;
      }
    }
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 108, 196, 177),
        shape: BoxShape.circle,
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      height: 100,
      margin: EdgeInsets.only(bottom: 70.0),
      child: Center(
        child: choice == null
            ? Text(
                'Escolha do PC',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 241, 241, 241),
                ),
              )
            : Image.network(imageUrl),
      ),
    );
  }
}
