import 'package:avp2/pages/atmconsultoria/atm_home.dart';
import 'package:flutter/material.dart';
import 'pages/frases/TelaFrases.dart';
import 'pages/calculo/TelaCalculo.dart';
import 'pages/jogos/MenuJogos.dart';

class Home extends StatelessWidget {

  void _navigateToTelaFrases(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaFrases()),
    );
  }

  void _navigateToTelaEmpresa(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AtmHome()),
    );
  }

  void _navigateToTelaCalculo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaCalculo()),
    );
  }

  void _navigateToTelaJogos(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaJogos()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Prova Ap2',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            GestureDetector(
              onTap: () => _navigateToTelaEmpresa(context),
              child: Column(
                children: [
                  Image.asset(
                    "images/menu_empresa.png",
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Frases",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),


            const SizedBox(height: 32),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => _navigateToTelaFrases(context),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/frases.png",
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Frases",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () => _navigateToTelaCalculo(context),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/alcool.png",
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Cálculo",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                GestureDetector(
                  onTap: () => _navigateToTelaJogos(context),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/tesoura.png",
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Jogos",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
