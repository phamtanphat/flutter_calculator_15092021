import 'package:flutter/material.dart';
import 'package:flutter_calculator_15092021/app_image.dart';

class CalculatorPage extends StatefulWidget {

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

// state object cua page
class _CalculatorPageState extends State<CalculatorPage> {
  
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child:Column(
          children: [
            Image.asset(AppImage.CALCULATE)
          ],
        )
      ),
    );
  }
}
