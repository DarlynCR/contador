import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPagesState();
}

//Estado del StatefullWidget ContadorPage
//Sólo es para esta clase, por eso es privado
class _ContadorPagesState extends State<ContadorPage> {
  final _styleText = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    //Scafold -> es como el lienzo - contenedor
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de clicks:', style: _styleText),
          Text(
            '$_conteo',
            style: _styleText,
          ),
        ],
      )),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
            onPressed: _restart, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _quitar, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        //Se pone sin () para indicar la referencia a la función, para que se ejecute cuando se presiona el botón
        //y no en el momento que se crea
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add)),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _quitar() {
    setState(() => _conteo--);
  }

  void _restart() {
    setState(() => _conteo = 0);
  }
}
