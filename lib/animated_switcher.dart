import 'package:flutter/material.dart';

//! AnimatedSwitcher

class AnimatedSwi extends StatefulWidget {
  const AnimatedSwi({Key? key}) : super(key: key);

  @override
  State<AnimatedSwi> createState() => _AnimatedSwiState();
}

class _AnimatedSwiState extends State<AnimatedSwi> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Animado - Diego'), // Título para la AppBar
        backgroundColor: Colors.purple, // Color para la AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                '$_count',
                style: const TextStyle(fontSize: 40),
                key: ValueKey(_count),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            ElevatedButton(
              child: const Text('Add'),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.purple[100], // Color de fondo para el Scaffold
    );
  }
}
