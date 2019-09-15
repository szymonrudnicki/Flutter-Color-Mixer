import 'package:flutter/material.dart';

import '../components/rgb_preview.dart';
import '../components/rgb_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RGBSlider(),
            RGBPreview(),
          ],
        ),
      );
}
