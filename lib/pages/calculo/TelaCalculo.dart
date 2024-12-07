import 'package:flutter/material.dart';
import 'dart:math';

class TelaCalculo extends StatefulWidget {
  @override
  _TelaCalculoState createState() => _TelaCalculoState();
}

class _TelaCalculoState extends State<TelaCalculo> {
  final TextEditingController _controllerAlcool = TextEditingController();
  final TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "Informe os preços para calcular.";

  void _calcular() {
    if (_controllerAlcool.text.isEmpty || _controllerGasolina.text.isEmpty) {
      setState(() {
        _textoResultado = "Preencha ambos os campos para calcular.";
      });
      return;
    }

    var precoAlcool = double.tryParse(_controllerAlcool.text);
    var precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null ||
        precoGasolina == null ||
        precoAlcool <= 0 ||
        precoGasolina <= 0) {
      setState(() {
        _textoResultado =
            "Número inválido. Digite números maiores que 0 e utilize (.) como separador decimal.";
      });
      return;
    }

    setState(() {
      _textoResultado = (precoAlcool / precoGasolina) < 0.7
          ? "Melhor abastecer com Álcool"
          : "Melhor abastecer com Gasolina";
    });
  }

  void _limparCampos() {
    setState(() {
      _controllerAlcool.clear();
      _controllerGasolina.clear();
      _textoResultado = "Informe os preços para calcular.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/alcool.png"),
            const SizedBox(height: 20),
            const Text(
              "Saiba qual a melhor opção para abastecimento do seu carro",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controllerAlcool,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Preço Álcool, ex: 4.99",
              ),
              style: const TextStyle(fontSize: 22),
            ),
            TextField(
              controller: _controllerGasolina,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Preço Gasolina, ex: 5.99",
              ),
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcular,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Calcular", style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _limparCampos,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(15),
              ),
              child: const Text("Limpar", style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 20),
            Text(
              _textoResultado,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
