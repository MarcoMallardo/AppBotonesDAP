import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String texto = 'Hola';
  Color colorFondo = Color.fromARGB(255, 255, 255, 255);
  double tamanoLetra = 32;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size(120, 56),
    );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: colorFondo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto, style: TextStyle(fontSize: tamanoLetra)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    texto = 'Hola';
                    setState(() {});
                  },
                  child: const Text('show', style: TextStyle(fontSize: 24)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    texto = '';
                    setState(() {});
                  },
                  child: const Text('delete', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    colorFondo = Color.fromARGB(255, 255, 0, 0);
                    setState(() {});
                  },
                  child: const Text('red', style: TextStyle(fontSize: 24)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    colorFondo = Color.fromARGB(255, 0, 0, 255);
                    setState(() {});
                  },
                  child: const Text('blue', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    tamanoLetra++;
                    setState(() {});
                  },
                  child: const Text('+', style: TextStyle(fontSize: 24)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: buttonStyle,
                  onPressed: () {
                    tamanoLetra--;
                    setState(() {});
                  },
                  child: const Text('-', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}