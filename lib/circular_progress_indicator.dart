import 'package:flutter/material.dart';

//! CircularProgressIndicator con Scaffold

class CircularProgress extends StatelessWidget {
  const CircularProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cargando... - Diego'), // Título para la AppBar
        backgroundColor: Colors
            .blueGrey, // Color para la AppBar (combinando con el backgroundColor del indicador)
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        // El widget Center de Flutter para centrar el indicador
        child: CircularProgressIndicator(
          color: Colors.orangeAccent,
          backgroundColor: Colors.blueGrey,
          value: 0.50,
        ),
      ),
      backgroundColor: Colors.blueGrey[100], // Color de fondo para el Scaffold
    );
  }
}
