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
      body: new Container(),
      backgroundColor: Colors.blue,
    );
  }
}
