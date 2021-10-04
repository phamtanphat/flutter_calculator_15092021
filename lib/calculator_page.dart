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
      body: SingleChildScrollView(
        child: Container(
            constraints: BoxConstraints(maxHeight: height),
            child: Column(
              children: [
                Image.asset(AppImage.CALCULATE,
                    width: width / 3, height: height / 5),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.red,
                    maxLength: 4,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(width: 2)),
                      hintText: "Input number 1",
                      labelText: "Number 1",
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.red,
                    maxLength: 4,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(width: 2)),
                      hintText: "Input number 2",
                      labelText: "Number 2",
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Visibility(
                    visible: true,
                    child: Text("Kết quả = 10",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.red))),
                SizedBox(height: 5),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              ElevatedButton(onPressed: (){}, child: Text("+" , style: TextStyle(fontSize: 20))),
                              ElevatedButton(onPressed: (){}, child: Text("-" , style: TextStyle(fontSize: 20))),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              ElevatedButton(onPressed: (){}, child: Text("*" , style: TextStyle(fontSize: 20))),
                              ElevatedButton(onPressed: (){}, child: Text("/" , style: TextStyle(fontSize: 20))),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            )),
      ),
    );
  }
}
