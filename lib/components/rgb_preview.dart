import 'package:flutter/material.dart';

class RGBPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
          child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(11, 7, 28, 1),
        ),
      ));
}
