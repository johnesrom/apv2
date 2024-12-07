import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imageApp = AssetImage("images/padrao.png");
  var _mensagem = "Escolha uma opção para começar!";

  void _opcaoSelecionada(String escolhaUsuario) {
    var opcoes = ["pedra", "papel", "tesoura"];

    int numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    setState(() {
      _imageApp = AssetImage("images/$escolhaApp.png");
    });

    if ((escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
        (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
        (escolhaUsuario == "papel" && escolhaApp == "pedra")) {
      setState(() {
        _mensagem = "Parabéns! Você ganhou!";
      });
    } else if (escolhaUsuario == escolhaApp) {
      setState(() {
        _mensagem = "Empatamos!";
      });
    } else {
      setState(() {
        _mensagem = "Você perdeu!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "JokenPo",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: const Text(
              "Escolha do app",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Imagem da escolha do app
          Image(image: _imageApp, height: 120),

          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: const Text(
              "Escolha uma opção abaixo",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _opcaoSelecionada("pedra");
                },
                child: Image.asset("images/pedra.png", height: 100),
              ),
              GestureDetector(
                onTap: () {
                  _opcaoSelecionada("papel");
                },
                child: Image.asset("images/papel.png", height: 100),
              ),
              GestureDetector(
                onTap: () {
                  _opcaoSelecionada("tesoura");
                },
                child: Image.asset("images/tesoura.png", height: 100),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
