import 'package:flutter/material.dart';
import 'package:flutter_stack_card/flutter_stack_card.dart';
import './AlarmData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stack Card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Stack Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Alarm> alarmData = alarmList;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            child: StackCard.builder(
              dimension: StackDimension(width: 400, height: 600),
              stackType: StackType.right,
              displayIndicator: false,
              itemCount: alarmData.length,
              onSwap: (index) {
                print("Page change to $index");
              },
              itemBuilder: (context, index) {
                Alarm alarm = alarmData[index];
                return _itemBuilder(alarm);
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _itemBuilder(Alarm alarm) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        color: Colors.blueAccent,
        child: Stack(
          children: <Widget>[
            Container(
              child: Center(
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Container"),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Container(
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("SingleChild"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
