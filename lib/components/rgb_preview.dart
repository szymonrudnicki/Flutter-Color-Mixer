import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../models/color_model.dart';

class RGBPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<ColorModel>(
        builder: (context, colorModel, _) {
          var color = Color.fromRGBO(
            colorModel.red.toInt(),
            colorModel.green.toInt(),
            colorModel.blue.toInt(),
            1,
          );

          var colorInHex = color.value.toRadixString(16);

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black54,
                        width: 3,
                      ),
                      color: color,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          colorInHex,
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.content_copy),
                          ),
                          onTap: () =>
                              _copyColorToClipboard(context, colorInHex),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      );

  void _copyColorToClipboard(BuildContext context, String color) {
    Clipboard.setData(ClipboardData(text: color));
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("Color copied to clipboard"),
    ));
  }
}
