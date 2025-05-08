import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Cupertin0 extends StatelessWidget {
  const Cupertin0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Usamos MaterialApp para la estructura con Scaffold y AppBar
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Usamos ThemeData para definir el tema general
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
        primarySwatch:
            Colors.orange, // Usamos primarySwatch para el color primario
      ),
      home: Scaffold(
        // Usamos Scaffold para la estructura de la página
        appBar: AppBar(
          title: const Text('Flutter Mapp - Diego'), // Título en la AppBar
          backgroundColor: Colors.orange, // Color de la AppBar
          leading: IconButton(
            // Botón para ir atrás
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: const Center(
          child: Icon(CupertinoIcons.share,
              color: CupertinoColors.systemOrange,
              size: 50), // Usamos el icono de Cupertino dentro del body
        ),
        backgroundColor: const Color.fromARGB(
            255, 18, 32, 47), // Color de fondo del Scaffold
      ),
    );
  }
}
