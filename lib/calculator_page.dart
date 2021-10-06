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
  final number1Controller = TextEditingController();
  final number2Controller = TextEditingController();
  var visible =  false;
  dynamic result = "";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Container(
          constraints: BoxConstraints(maxHeight: height),
          child: Column(
            children: [
              Image.asset(AppImage.CALCULATE,
                  width: width / 3, height: height / 5),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  controller: number1Controller,
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
                  controller: number2Controller,
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
                  visible: visible,
                  child: Text("Kết quả = $result",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red))),
              SizedBox(height: 5),
              Flexible(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Flexible(
                      child: Container(
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  var textNumber1 =
                                      number1Controller.text.toString();
                                  var textNumber2 =
                                      number2Controller.text.toString();

                                  if (textNumber1.isEmpty || textNumber2.isEmpty) {
                                    setState(() {
                                      visible = false;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Người dùng nhập chưa đầy đủ")));
                                    return;
                                  }

                                  var number1 = int.parse(textNumber1);
                                  var number2 = int.parse(textNumber2);

                                  setState(() {
                                    result = number1 + number2;
                                    visible = true;
                                  });
                                },
                                child:
                                    Text("+", style: TextStyle(fontSize: 20))),
                            ElevatedButton(
                                onPressed: () {
                                  var textNumber1 =
                                  number1Controller.text.toString();
                                  var textNumber2 =
                                  number2Controller.text.toString();

                                  if (textNumber1.isEmpty || textNumber2.isEmpty) {
                                    setState(() {
                                      visible = false;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Người dùng nhập chưa đầy đủ")));
                                    return;
                                  }

                                  var number1 = int.parse(textNumber1);
                                  var number2 = int.parse(textNumber2);

                                  setState(() {
                                    result = number1 - number2;
                                    visible = true;
                                  });
                                },
                                child:
                                    Text("-", style: TextStyle(fontSize: 20))),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Flexible(
                      child: Container(
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  var textNumber1 =
                                  number1Controller.text.toString();
                                  var textNumber2 =
                                  number2Controller.text.toString();

                                  if (textNumber1.isEmpty || textNumber2.isEmpty) {
                                    setState(() {
                                      visible = false;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Người dùng nhập chưa đầy đủ")));
                                    return;
                                  }

                                  var number1 = int.parse(textNumber1);
                                  var number2 = int.parse(textNumber2);

                                  setState(() {
                                    result = number1 * number2;
                                    visible = true;
                                  });
                                },
                                child:
                                    Text("*", style: TextStyle(fontSize: 20))),
                            ElevatedButton(
                                onPressed: () {
                                  var textNumber1 =
                                  number1Controller.text.toString();
                                  var textNumber2 =
                                  number2Controller.text.toString();

                                  if (textNumber1.isEmpty || textNumber2.isEmpty) {
                                    setState(() {
                                      visible = false;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Người dùng nhập chưa đầy đủ")));
                                    return;
                                  }


                                  var number1 = double.parse(textNumber1);
                                  var number2 = double.parse(textNumber2);

                                  if (number2 <= 0){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                            content: Text(
                                                "Không chia với giá trị 0")));
                                    return;
                                  }
                                  setState(() {
                                    result =  num.parse((number1 / number2).toStringAsExponential(1));
                                    visible = true;
                                  });
                                },
                                child:
                                    Text("/", style: TextStyle(fontSize: 20))),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
