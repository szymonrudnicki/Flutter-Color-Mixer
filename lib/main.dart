import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/color_model.dart';
import 'pages/home_page.dart';

void main() => runApp(
      ChangeNotifierProvider.value(
        value: ColorModel(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'Flutter Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );
}
