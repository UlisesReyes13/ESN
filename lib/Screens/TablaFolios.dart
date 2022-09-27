import 'package:esn/Screens/DatosGenerales.dart';
import 'package:esn/Screens/LoginForm.dart';
import 'package:esn/Screens/ServiciosBanios.dart';
import 'package:flutter/material.dart';

class TablaFolios extends StatefulWidget {

  @override
  State<TablaFolios> createState() => _TablaFoliosState();
}

class _TablaFoliosState extends State<TablaFolios> {
  List<Widget> _paginas = [
    Folios(),
    DatosGenerales(),
    ServiciosBanios('2')
  ];

  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudios Realizados'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => LoginForm()),
                    (Route<dynamic> route) => false,);
            }
        ),
      ),
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Folios'),
          BottomNavigationBarItem(label: 'Datos Generales', icon: Icon(Icons.add)),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Servicio Baños')
        ],
      ),
    );
  }
}

class Folios extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Bienvenido'),
    );
  }
}

