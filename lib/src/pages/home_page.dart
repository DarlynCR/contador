import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleText = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    //Scafold -> es como el lienzo - contenedor
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Número de clicks:', style: styleText),
          Text(
            '0',
            style: styleText,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Instrucciones cuando se de click
          print('Hola mundo!');
        }, // si se define en null, no se puede presionar
      ),
    );
  }
}
