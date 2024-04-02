import 'package:flutter/material.dart';
import 'package:youtube/telas/biblioteca.dart';
import 'package:youtube/telas/emAlta.dart';
import 'package:youtube/telas/inicio.dart';
import 'package:youtube/telas/inscricoes.dart';

class  Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int indiceAtual = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricoes(),
      Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(

        iconTheme: IconThemeData(
          color: Colors.grey,
          opacity: 1
        ),

        backgroundColor: Colors.white,

        title: Image.asset("imagens/youtube.png", width: 99, height: 22),

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){
              print("acao: videocam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print("acao: pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){
              print("acao: conta");
            },
          )

        ],
      ),

      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[indiceAtual],
      ),

      bottomNavigationBar: BottomNavigationBar(

          currentIndex: indiceAtual,

          onTap: (indice){
            setState(() {
              indiceAtual = indice;
            });
          },

          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.grey,
          fixedColor: Colors.red,

          items: [
        BottomNavigationBarItem(
            label: "Início",
            icon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
            label: "Em alta",
            icon: Icon(Icons.whatshot)
        ),
        BottomNavigationBarItem(
            label: "Inscrições",
            icon: Icon(Icons.subscriptions)
        ),
        BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(Icons.library_books)
        ),

      ]),
    );
  }
}
