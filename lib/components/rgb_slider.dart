import 'package:flutter/material.dart';

class RGBSlider extends StatelessWidget {
  Widget _buildSlider(
          {String label, Color color, double value, Function onChanged}) =>
      Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            Text(label),
            Slider(
              activeColor: color,
              value: value,
              onChanged: onChanged,
              min: 0,
              max: 255,
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => Column(children: [
        _buildSlider(
          label: "red",
          color: Colors.red,
          value: 0,
          onChanged: (value) => print(value),
        ),
        _buildSlider(
          label: "green",
          color: Colors.green,
          value: 0,
          onChanged: (value) => print(value),
        ),
        _buildSlider(
          label: "blue",
          color: Colors.blue,
          value: 0,
          onChanged: (value) => print(value),
        ),
      ]);
}
