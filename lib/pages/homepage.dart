import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text(
          "H o m e p a g e",
          style: TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
