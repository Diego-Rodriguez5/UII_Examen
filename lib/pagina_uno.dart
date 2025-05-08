import 'package:flutter/material.dart';
import 'package:diego/main.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla Principal',
          style: TextStyle(
            color: Colors.white, // Color de letra blanco
            fontFamily: 'Times New Roman', // Fuente Times New Roman
            fontSize: 25, // Tamaño de letra 15
          ),
        ),
        backgroundColor: Color(0xff787e86),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 50), // Espacio entre los botones
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Ver Pantalla 1'),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los botones
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Ver Pantalla 2'),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los botones
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('Ver Pantalla 3'),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los botones
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('Ver Pantalla 4'),
            ),
          ),
          const SizedBox(height: 50), // Espacio entre los botones
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('Ver Pantalla 5'),
            ),
          ),
        ],
      ),
    );
  }
}
