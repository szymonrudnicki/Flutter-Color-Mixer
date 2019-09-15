import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/color_model.dart';

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
  Widget build(BuildContext context) {
    var color = Provider.of<ColorModel>(context, listen: true);

    return Column(
      children: [
        _buildSlider(
          label: "red",
          color: Colors.red,
          value: color.red,
          onChanged: (value) => color.red = value,
        ),
        _buildSlider(
          label: "green",
          color: Colors.green,
          value: color.green,
          onChanged: (value) => color.green = value,
        ),
        _buildSlider(
          label: "blue",
          color: Colors.blue,
          value: color.blue,
          onChanged: (value) => color.blue = value,
        ),
      ],
    );
  }
}
