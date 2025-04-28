import 'package:flutter/material.dart';

//! AnimatedCrossFade

class PantallaCuatro extends StatefulWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  State<PantallaCuatro> createState() => _PantallaCuatroState();
}

class _PantallaCuatroState extends State<PantallaCuatro> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red, // Fondo azul
          title: const Text(
            'Pantalla 4 Cervantes',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
          centerTitle: true, // Centrar el texto
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text(
                'DA CLICK AQUI',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AnimatedCrossFade(
              firstChild: Image.asset(
                'assets/icon/descarga.jpg',
                width: double.infinity,
              ),
              secondChild: Image.asset(
                'assets/icon/si.jpg',
                width: 300,
              ),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
          ],
        ));
  }
}
