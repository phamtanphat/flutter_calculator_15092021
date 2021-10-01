import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

// state object cua page
class _CalculatorPageState extends State<CalculatorPage> {

  late String text = "";

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator App"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Center(
          child: Column(
            children: [
              Text(text),
              ElevatedButton(
                child: Text("Change Text"),
                onPressed: (){
                   setState(() {
                     text = " abc";
                   });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant CalculatorPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }
  @override
  void dispose() {
    super.dispose();
    print("didUpdateWidget");
  }
}
