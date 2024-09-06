import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _Layout();
}

int itemPosition = 0;

class _Layout extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 40, 179, 235),
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text('Banner'),
            Row(
              children: [
                Container(
            decoration: BoxDecoration(
              color: Colors.white,
              //shape: BoxShape.circle
              borderRadius: BorderRadius.circular(12)
            ),
            width: MediaQuery.of(context).size.width *0.25, //para ficar na tela inteira
            height: 200,
            margin: EdgeInsets.all(10), //.all e .only  .assymetric
            
            ),
              ],
              
            ),
          ],
        ),
      )
    );
  }
}            
            


