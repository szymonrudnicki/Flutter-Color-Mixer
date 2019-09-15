import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/color_model.dart';

class RGBPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<ColorModel>(
        builder: (context, color, _) => Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black54,
                width: 3,
              ),
              color: Color.fromRGBO(color.red.toInt(), color.green.toInt(),
                  color.blue.toInt(), 1),
            ),
          ),
        ),
      );
}
