import 'package:flutter/material.dart';

class EmpresaPage extends StatefulWidget {
  const EmpresaPage({super.key});

  final String titleName = "Empresa";

  @override
  State<EmpresaPage> createState() => _EmpresaPageState();
}

class _EmpresaPageState extends State<EmpresaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titleName),
        backgroundColor: Colors.green,
      ),
    );
  }
}
