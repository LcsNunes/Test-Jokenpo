import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final String resultMessage;

  const ResultDisplay({required this.resultMessage, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50.0),
      child: Text(
        resultMessage,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
