import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int itemPosition = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Lucas'),
              accountEmail: Text('lucas_p_nunes@estudante.sesisenai.org.br'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1287518439385567233/MCr5zLlU_400x400.jpg'),
                child: Text('A'),
              ),
              ),
            ListTile(
                title: Text('Categorias'),
                subtitle: Text('Veja todas categorias'),
                trailing: Icon(Icons.person),
                leading: CircleAvatar(),
                
              ),
              Divider(),
              ListTile(
                title: Text('Categorias'),
                subtitle: Text('Veja todas categorias'),
                trailing: Icon(Icons.person),
                leading: CircleAvatar(),
              )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('IFood'),
        centerTitle: true,
      ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              //shape: BoxShape.circle
              borderRadius: BorderRadius.circular(12)
            ),
            width: MediaQuery.of(context).size.width *0.25, //para ficar na tela inteira
            height: 100,
            margin: EdgeInsets.all(10), //.all e .only  .assymetric
            child: Center(
              child: Text(
                'Container 1',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow
                ),))
            ),
            Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              //shape: BoxShape.circle
              borderRadius: BorderRadius.circular(12)
            ),
            width: MediaQuery.of(context).size.width * 0.5, //para ficar na tela inteira
            height: 100,
            margin: EdgeInsets.all(10), //.all e .only  .assymetric
            child: Center(
              child: Text(
                'Container 1',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow
                ),))
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
                'Container 1',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow
                ),))
            ),
          ],
        ),
      ),



      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message),
        ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
          itemPosition = index;
          });                 
        },
        currentIndex: itemPosition,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ]
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      /*bottomNavigationBar: BottomAppBar(
        height: 60,
        color: Colors.blueGrey,
        shape: CircularNotchedRectangle(),
        ),*/
    
    );
  }
}

