import 'package:flutter/material.dart';
import 'package:diego/pagina_uno.dart';
import 'package:diego/pagina_animated_opacity.dart';
import 'package:diego/animated_switcher.dart';
import 'package:diego/center.dart';
import 'package:diego/circular_progress_indicator.dart';
import 'package:diego/cupertino_app.dart';

void main() => runApp(MisRutasApp());

class MisRutasApp extends StatelessWidget {
  const MisRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre paginas routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const AnimatedOp(),
        '/pantalla3': (context) => const AnimatedSwi(),
        '/pantalla4': (context) => const Centerr(),
        '/pantalla5': (context) => const CircularProgress(),
        '/pantalla6': (context) => const Cupertin0(),
      },
    );
  }
}
