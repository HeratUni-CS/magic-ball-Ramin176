import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Assk me anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    ),
    ),
  );
}
class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}
class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}
