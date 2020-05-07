import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}
class MyAppState extends State<MyApp> {
  List colors = [Colors.red, Colors.green, Colors.yellow, Colors.blue,Colors.orange,Colors.deepPurple, Colors.indigo];
  Color color = Colors.white;
  Random random = new Random();
  int index = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(backgroundColor: color,
            body:
            GestureDetector(
              behavior: HitTestBehavior.translucent, //or HitTestBehavior.opaque
              onTap: () {
                setState(() {
                  //color = Color.fromRGBO(Random().nextInt(254) + 1,
                  // Random().nextInt(254) + 1, Random().nextInt(254) + 1, 1);
                  index = random.nextInt(7);
                  color = colors.elementAt(index);
                });
              },
              child: Center(
                child: Text('Hey there', style: TextStyle(fontSize: 32.0)),
              ),
            )
        )
    );
  }
}