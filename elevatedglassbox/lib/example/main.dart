import 'package:elevatedglassbox/elevatedglassbox.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomPack(),
    );
  }
}

class CustomPack extends StatelessWidget {
  const CustomPack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 5,
          width: MediaQuery.of(context).size.width - 100,
          child: const ElevatedBox(
              blur: 0.5,
              decorationOpacity: 0.1,
              child: Center(child: Text("man down")),
              borderradius: 20,
              borderopacity: 0.2,
              containercolor: Colors.cyan,
              bordercolor: Colors.cyan,
              borderwidth: 1.9),
        ),
      ),
    );
  }
}
