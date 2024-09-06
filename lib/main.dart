import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home_page.dart';


/*void main() {
  runApp( // roda o app
    MaterialApp( // estiliza
      home: HomePage(), // rota inicial
    ),
  );
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override 
  State<HomePage> createState () => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App'),
      ),
      body: GestureDetector(
        onTap: (){
          print(Random().nextInt(11));
        },
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}
*/




void main() {
  runApp( // roda o app
    MaterialApp( // estiliza
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red,
      useMaterial3: false
    ),
      home: HomePage(), // rota inicial
    ),
  );
}