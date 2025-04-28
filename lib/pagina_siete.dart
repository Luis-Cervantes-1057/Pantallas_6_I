import 'package:flutter/material.dart';

class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff932b27),
        title: const Text(
          'Pantalla 7 Cervantes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        // <-- Aquí agregamos el Center
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // Esto ayuda a que la columna ocupe solo el espacio necesario
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Rotate Logo'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
