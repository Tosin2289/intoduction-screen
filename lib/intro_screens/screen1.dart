import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screenone extends StatelessWidget {
  const Screenone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      child: Center(
        child: Lottie.asset("assets/anime2.json"),
      ),
    );
  }
}
