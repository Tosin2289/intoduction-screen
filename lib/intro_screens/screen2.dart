import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screentwo extends StatelessWidget {
  const Screentwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      child: Center(
        child: Lottie.asset("assets/anime1.json"),
      ),
    );
  }
}
