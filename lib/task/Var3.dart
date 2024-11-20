import 'package:flutter/material.dart';
import './customContainer.dart';
import './sliders.dart';

class Var3 extends StatelessWidget {
  const Var3({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(
        children:[

          SizedBox(height: 16),

          CustomContainer(),

          SizedBox(height: 20),

          Sliders(),
      ]
    );
  }
}