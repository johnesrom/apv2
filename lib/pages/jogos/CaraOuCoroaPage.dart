import 'dart:math';

import 'package:flutter/material.dart';

class CaraOuCoroaPage extends StatefulWidget {
  @override
  _CaraOuCoroaPageState createState() => _CaraOuCoroaPageState();
}

class _CaraOuCoroaPageState extends State<CaraOuCoroaPage> {

  String _resultado = 'Pressione o botão para jogar';

  void _jogar() {
    setState(() {
      _resultado = Random().nextBool() ? 'Cara' : 'Coroa';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Cara ou Coroa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                _resultado,
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _jogar,
              child: Text('Jogar'),
            ),
          ],
        ),
      ),
    );
  }
}