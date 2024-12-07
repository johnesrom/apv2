import 'package:avp2/pages/atmconsultoria/clientes_page.dart';
import 'package:avp2/pages/atmconsultoria/contato_page.dart';
import 'package:avp2/pages/atmconsultoria/empresa_page.dart';
import 'package:avp2/pages/atmconsultoria/servicos_page.dart';
import 'package:flutter/material.dart';

class AtmHome extends StatefulWidget {
  const AtmHome({super.key});

  final String titleName = "ATM Consultoria";

  @override
  State<AtmHome> createState() => _HomeState();
}

class _HomeState extends State<AtmHome> {
  void _navigatePage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void _goToEmpresa() {
    _navigatePage(const EmpresaPage());
  }

  void _goToCliente() {
    _navigatePage(const ClientesPage());
  }

  void _goToServicos() {
    _navigatePage(const ServicosPage());
  }

  void _goToContato() {
    _navigatePage(const ContatoPage());
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          title: Text(widget.titleName),
          backgroundColor: Colors.green,
        ),
        body: Container(
          height: screenHeight,
          padding: EdgeInsets.only(top: 0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/logo.png'),
              Container(
                padding: EdgeInsets.only(top: 10),
                height: 400, // Define a altura do GridView
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  padding: const EdgeInsets.all(40),
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  children: [
                    InkWell(
                      onTap: _goToEmpresa,
                      child: Image.asset('images/menu_empresa.png'),
                    ),
                    InkWell(
                      onTap: _goToServicos,
                      child: Image.asset('images/menu_servico.png'),
                    ),
                    InkWell(
                      onTap: _goToCliente,
                      child: Image.asset('images/menu_cliente.png'),
                    ),
                    InkWell(
                      onTap: _goToContato,
                      child: Image.asset('images/menu_contato.png'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
