import 'package:flutter/material.dart';

class Var3 extends StatefulWidget {
  @override
  State<Var3> createState() => _Var3State();
}

class _Var3State extends State<Var3> {
  final _size = 100.0;
  int _red = 0;
  int _green = 0;
  int _blue = 0;

  _onChangeRed(int redValue) {
    setState(() {
      _red = redValue;
    });
  }

  _onChangeBlue(int blueValue) {
    setState(() {
      _blue = blueValue;
    });
  }

  _onChangeGreen(int greenValue) {
    setState(() {
      _green = greenValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[

        const SizedBox(height: 16),

        Container(
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            color: Color.fromRGBO(_red, _green, _blue, 1),
          ),
        ),

        Row(
          children: [
            const Text("Red: "),
            Text(_red.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),

        Slider(
          value: _red.toDouble(),
          min: 0,
          max: 255,
          onChanged: (value) {
            _onChangeRed(value.toInt());
          },
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            const Text("Green: "),
            Text(_green.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(
          value: _green.toDouble(),
          min: 0,
          max: 255,
          onChanged: (value) {
            _onChangeGreen(value.toInt());
          },
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            const Text("Blue: "),
            Text(_blue.toStringAsFixed(2),  style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(
            value: _blue.toDouble(),
            min: 0,
            max: 255,
            onChanged: (value) {
              _onChangeBlue(value.toInt());
            },
          ),
      ]
    );
  }
}