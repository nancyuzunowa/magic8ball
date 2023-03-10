import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: new BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ask Me Anything'),
        backgroundColor: Colors.blue[900],
      ),
      body: new Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () => {changeBallAnswer()},
          child: Image.asset('images/ball$ballNumber.png')),
    );
  }

  void changeBallAnswer() {
    setState(() {
      ballNumber = new Random().nextInt(4) + 1;
    });
  }
}
