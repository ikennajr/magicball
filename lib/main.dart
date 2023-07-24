import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.black87,
        ),
        body: MagicBall(),
      ),

    )
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBall = 1;

  ballChange() {
    setState(() {
      magicBall = Random().nextInt(6) + 1;
    });
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () {
                  ballChange();
                },
                child: Image.asset(
                  'images/IMG$magicBall.jpg', width: 200.0, height: 200.0,),
              )
          ),
          Text(
              'Ask a question and shake ball!'
          ),

        ],
      ),
    );
  }
}

