import 'package:flutter/material.dart';

//! Center (Ahora Centerr con Scaffold)

class Centerr extends StatelessWidget {
  const Centerr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Center - Diego'), // Título para la AppBar
        backgroundColor:
            Colors.orange, // Color para la AppBar (combinando con el Container)
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        // El widget Center de Flutter para centrar la columna
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.orangeAccent,
              child: const Center(
                // Este Center centra el texto dentro del Container
                heightFactor: 5,
                child: Text('Flutter Mapp'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.orange[100], // Color de fondo para el Scaffold
    );
  }
}
