import 'package:avp2/pages/jogos/CaraOuCoroaPage.dart';
import 'package:avp2/pages/jogos/ImparOuParPage.dart';
import 'package:flutter/material.dart';
import 'JokenPo.dart';

class TelaJogos extends StatelessWidget {

  void _navigateToJokenPo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Jogo()),
    );
  }

  void _navigateToCaraOuCoroa(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CaraOuCoroaPage()),
    );
  }

  void _navigateToImpaOuParPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ImparOuParPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Jogos",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(
              onTap: () => _navigateToJokenPo(context),
              child: const Text(
                "JokenPo",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _navigateToCaraOuCoroa(context),
              child: const Text(
                "Cara ou Coroa",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => _navigateToImpaOuParPage(context),
              child: const Text(
                "Impar ou Par",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
