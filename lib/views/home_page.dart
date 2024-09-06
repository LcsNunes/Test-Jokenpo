import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int itemPosition = 0;
PageController pageController = PageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Faça sua jogada'),
        centerTitle: true,
        backgroundColor:const Color.fromARGB(255, 40, 179, 235),
      ),

      body:
       Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded( 
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://wesraiuga.github.io/games/assets/img/jokenpo/jokenpo-user-pedra.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://wesraiuga.github.io/games/assets/img/jokenpo/jokenpo-user-papel.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://wesraiuga.github.io/games/assets/img/jokenpo/jokenpo-user-tesoura.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  ),
                ),
              ],
            ),
             Container(
            margin: const EdgeInsets.all(30.0),
            child: Text(
              'Jogada do Computador',
              style: TextStyle(fontSize: 20),
            ),
          ),
        
        Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 108, 196, 177),
          shape: BoxShape.circle
          
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 100,
        margin: const EdgeInsets.only(bottom: 70.0),
        child: Center(
          child: Text(
            'Tesoura',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 241, 241, 241)
            ),))
        ),
                 Container(
            margin: const EdgeInsets.only(top: 10.0), // Adiciona margem superior
            child: Text(
              'Resultado',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 50.0), // Adiciona margem superior
            child: Text(
              'Você Ganhou',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20.0), // Adiciona margem superior
            child: Text(
              'Placar',
              style: TextStyle(fontSize: 20),
            ),
          ),
               
                Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              //shape: BoxShape.circle
              borderRadius: BorderRadius.circular(12)
            ),
            width: MediaQuery.of(context).size.width * 0.75, //para ficar na tela inteira
            height: 100,
            margin: EdgeInsets.all(10), //.all e .only  .assymetric
            child: Center(
              child: Text(
                'Voce           PC',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow
                ),))
            ),
            
          ],
          
        ),
      )
    );
  }
}