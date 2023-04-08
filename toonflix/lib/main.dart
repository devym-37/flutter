import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// flutter SDK 3개의 core Widget중 하나를 상속 받아야한다
class App extends StatelessWidget {
  // build 메서드 구현 ui 구성
  // scaffold가 필요
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Header Text'),
        ),
        body: Center(child: Text('Hello Flutter')),
      ),
    );
  }
}
