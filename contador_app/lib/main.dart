import 'package:flutter/material.dart';

void main() {
  runApp();
}
class Myapp extends StatelessWidget {
  const Myapp ({super.key});
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      home: Container(
        color: Colors.black,
        child: Text("Olá Mundo!"),
        alignment: Alignment.center,
      ),
  );
  }
}