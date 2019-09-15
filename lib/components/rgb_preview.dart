import 'package:flutter/material.dart';
import '../models/color_model.dart';
import 'package:provider/provider.dart';

class RGBPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Consumer<ColorModel>(
        builder: (context, color, _) =>
            Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(color.red.toInt(), color.green.toInt(), color.blue.toInt(), 1),
                ),
              ),
            ),
      );
}
