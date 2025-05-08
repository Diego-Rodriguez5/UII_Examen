import 'package:flutter/material.dart';

//! AnimatedOpacity

class AnimatedOp extends StatefulWidget {
  const AnimatedOp({Key? key}) : super(key: key);

  @override
  State<AnimatedOp> createState() =>
      _AnimatedOpState(); // Corrección del nombre del State
}

class _AnimatedOpState extends State<AnimatedOp> {
  // Corrección del nombre del State
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos Scaffold para la estructura básica de la pantalla
      appBar: AppBar(
        title:
            const Text('Animación de Opacidad - Diego'), // Agregamos un título
        backgroundColor: Colors.blue, // Agregamos un color a la AppBar
        leading: IconButton(
          // Botón para ir atrás
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Función para navegar hacia atrás
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(
                size: 50,
              ),
            ),
            ElevatedButton(
              child: const Text('Fade Logo'),
              onPressed: () {
                setState(
                  () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor:
          Colors.lightBlue[100], // Agregamos un color de fondo al Scaffold
    );
  }
}
