import 'dart:math';

import 'package:flutter/material.dart';

class ImparOuParPage extends StatefulWidget {
  @override
  _ImparOuParPageState createState() => _ImparOuParPageState();
}

class _ImparOuParPageState extends State<ImparOuParPage> {
  String _resultado = 'Escolha Ímpar ou Par';
  String _escolhaUsuario = '';

  void _jogar(String escolha) {
    setState(() {
      _escolhaUsuario = escolha;
      int numeroAleatorio = Random().nextInt(10);
      bool isPar = numeroAleatorio % 2 == 0;
      String resultadoJogo = isPar ? 'Par' : 'Ímpar';

      if (_escolhaUsuario == resultadoJogo) {
        _resultado = 'Você ganhou! O número foi $numeroAleatorio ($resultadoJogo)';
      } else {
        _resultado = 'Você perdeu! O número foi $numeroAleatorio ($resultadoJogo)';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ímpar ou Par'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _resultado,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => _jogar('Ímpar'),
                  child: Text('Ímpar'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => _jogar('Par'),
                  child: Text('Par'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}