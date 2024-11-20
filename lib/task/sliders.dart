import 'package:flutter/material.dart';
import '../providers/Provider.dart';
import 'package:provider/provider.dart';

class Sliders extends StatelessWidget {
  const Sliders({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorProvider>(context);

    return Column(
      children: [
        Row(
          children: [
            const Text("Red: "),
            Text(provider.red.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),

        Slider(
          value: provider.red.toDouble(),
          min: 0,
          max: 255,
          onChanged: (value) {
            provider.red = value.toInt() ?? 0;
          },
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            const Text("Green: "),
            Text(provider.green.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(
          value: provider.green.toDouble(),
          min: 0,
          max: 255,
          onChanged: (value) {
            provider.green = value.toInt() ?? 0;
          },
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            const Text("Blue: "),
            Text(provider.blue.toStringAsFixed(2),  style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(
          value: provider.blue.toDouble(),
          min: 0,
          max: 255,
          onChanged: (value) {
            provider.blue = value.toInt() ?? 0;
          },
        )
      ],
    );
  }
}