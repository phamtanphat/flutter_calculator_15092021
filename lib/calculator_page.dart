import 'package:flutter/material.dart';
import 'package:flutter_calculator_15092021/app_image.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

// state object cua page
class _CalculatorPageState extends State<CalculatorPage> {
  late var width;
  late var height;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              Image.asset(AppImage.CALCULATE,
                  width: width / 3, height: height / 5),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.red,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10, top: 20 , bottom: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(width: 2)),
                    hintText: "Input number 1",
                    labelText: "Number 1",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.red,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10, top: 20 , bottom: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide: BorderSide(width: 2)),
                    hintText: "Input number 2",
                    labelText: "Number 2",
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
