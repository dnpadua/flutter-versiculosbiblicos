import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //Frases geradas pelo app
  var _frases = [
    "Tudo posso naquele que me fortalece. Filipenses 4:13",
    "Não fui eu que ordenei a você? Seja forte e corajoso! Não se apavore nem desanime, pois o Senhor, o seu Deus, estará com você por onde você andar. Josué 1:9",
    "Eu disse essas coisas para que em mim vocês tenham paz. Neste mundo vocês terão aflições; contudo, tenham ânimo! Eu venci o mundo. João 16:33",
    "Honra teu pai e tua mãe, a fim de que tenhas vida longa na terra que o Senhor,o teu Deus, te dá. Êxodo 20:12",
  ];

  var _fraseGerada = "Clique abaixo para gerar seu versículo!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases [ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Versículos bíblicos"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/Banner01.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Novo Versículo",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.brown,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}