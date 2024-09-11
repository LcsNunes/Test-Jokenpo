import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum JokenpoChoice { pedra, papel, tesoura }

class ChoiceButton extends StatelessWidget {
  final JokenpoChoice choice;
  final Function(JokenpoChoice) onSelect;

  const ChoiceButton({required this.choice, required this.onSelect, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageUrl;
    switch (choice) {
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
    return Expanded(
      child: GestureDetector(
        onTap: () => onSelect(choice),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.contain,
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.3,
          height: 100,
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        ),
      ),
    );
  }
}
