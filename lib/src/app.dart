import 'package:flutter/material.dart';

import 'package:contador/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // BuildContext contiene la informaicón del arbol de widgets
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
