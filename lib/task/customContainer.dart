import 'package:flutter/material.dart';
import '../providers/Provider.dart';
import 'package:provider/provider.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ColorProvider>(context);
    const _size = 100.0;

    return Container(
      width: _size,
      height: _size,
      decoration: BoxDecoration(
        color: Color.fromRGBO(provider.red, provider.green, provider.blue, 1),
      ),
    );
  }
}