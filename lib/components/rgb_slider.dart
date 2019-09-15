import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/color_model.dart';

class RGBSlider extends StatelessWidget {
  Widget _buildSlider(
          {String label, Color color, double value, Function onChanged}) =>
      Padding(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
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
  Widget build(BuildContext context) {
    var color = Provider.of<ColorModel>(context, listen: true);

    return Column(
      children: [
        _buildSlider(
          label: "Red (${color.red.toInt()})",
          color: Colors.red,
          value: color.red,
          onChanged: (value) => color.red = value,
        ),
        _buildSlider(
          label: "Green (${color.green.toInt()})",
          color: Colors.green,
          value: color.green,
          onChanged: (value) => color.green = value,
        ),
        _buildSlider(
          label: "Blue (${color.blue.toInt()})",
          color: Colors.blue,
          value: color.blue,
          onChanged: (value) => color.blue = value,
        ),
      ],
    );
  }
}
