import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String text = "test";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Column dan row"),
        ),
        body: Column(
          //mainkan disini
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText1(text: text),
            MyText1(text: "Text 2"),
            MyText1(text: "Text 3"),
            Row(
              children: [
                MyText2("Text 4"),
                MyText2("Text 5"),
                MyText2("Text 6"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyText1 extends StatelessWidget {
  const MyText1({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class MyText2 extends StatelessWidget {
  String title;

  MyText2(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(this.title);
  }
}
