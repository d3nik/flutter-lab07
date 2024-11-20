import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Provider.dart';
import './customContainer.dart';
import './sliders.dart';

class Var3 extends StatelessWidget {
  const Var3({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorProvider>(context);

    return const Column(
        children:[

          const SizedBox(height: 16),

          const CustomContainer(),

          const SizedBox(height: 20),

          const Sliders(),
      ]
    );
  }
}