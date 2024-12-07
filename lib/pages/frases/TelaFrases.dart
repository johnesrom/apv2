import 'package:flutter/material.dart';
import 'dart:math';

class TelaFrases extends StatefulWidget {
  @override
  _TelaFrasesState createState() => _TelaFrasesState();
}

class _TelaFrasesState extends State<TelaFrases> {
  // Lista de frases
  final List<String> _frases = [
    "Nada pode ser tão ruim que não possa piorar!",
    "É errando que se aduba a vida.",
    "Para baixo todo Santo ajuda!",
    "O caminho é longo, mas a derrota é certa!",
    "Vamos esquecer os erros do passado e focar nos erros de agora!",
    "Calma, que é aos poucos que a vida vai dando errado!",
    "Na hora certa, tudo vai dar errado.",
  ];

  // Frase exibida inicialmente
  String _fraseGerada = "Clique abaixo para gerar uma frase";

  // Função para gerar uma frase aleatória
  void _gerarFrase() {
    setState(() {
      _fraseGerada = _frases[Random().nextInt(_frases.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Frases do Dia",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Logo da aplicação
              Image.asset('images/frases.png'),

              // Frase gerada
              Text(
                _fraseGerada,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),

              // Botão para gerar nova frase
              ElevatedButton(
                onPressed: _gerarFrase,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                ),
                child: const Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
