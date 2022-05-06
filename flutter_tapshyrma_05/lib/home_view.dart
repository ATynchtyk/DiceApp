import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatefulWidget {
  DiceApp({Key key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int solDice = 5;
  int onDice = 2;

  throwDice() {
    onDice = Random().nextInt(6) + 1;
    solDice = Random().nextInt(6) + 1;
    setState(() {});

    print('solDice: $solDice and onDice: $onDice');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCD9F48),
      appBar: AppBar(
        backgroundColor: Color(0xffCD9F48),
        title: Text(
          'DiceApp',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: InkWell(
                  onTap: throwDice,
                  child: Image.asset(
                    'assets/images/dice$onDice.png',
                  ),
                ),
              ),
              SizedBox(
                width: 25.0,
              ),
              Expanded(
                child: InkWell(
                  onTap: throwDice,
                  child: Image.asset(
                    'assets/images/dice$solDice.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
