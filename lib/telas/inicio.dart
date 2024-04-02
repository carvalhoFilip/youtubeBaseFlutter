import 'package:flutter/material.dart';
import 'package:youtube/model/Video.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  Future<List<Video>> _listarVideos() async {
    // Simulando uma chamada à API
    await Future.delayed(Duration(seconds: 2)); // Simulando um tempo de espera

    // Como não estamos usando uma API, retornamos uma lista vazia
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(
      future: _listarVideos(),
      builder: (context, snapshot) {
        switch(snapshot.connectionState) {
          case ConnectionState.none :
          case ConnectionState.waiting :
            return Center(
              child: CircularProgressIndicator(),
            );
          case ConnectionState.done :
            return Center(
              child: Text("Tela de Início", style: TextStyle(fontSize: 25)),
            );
          default:
            return Container();
        }
      },
    );
  }
}
