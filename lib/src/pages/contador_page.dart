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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Instrucciones cuando se de click
          setState(() {
            // redibujar el widget
            _conteo++;
          });

          print('Hola mundo $_conteo');
        }, // si se define en null, no se puede presionar
      ),
    );
  }
}
