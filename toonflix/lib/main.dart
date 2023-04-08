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
        backgroundColor: Color(0xFF181818),
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Hey, Lee',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$5 194 234',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -2,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 50,
                        ),
                        child: Text('Transfer',
                            style: TextStyle(
                              fontSize: 18,
                            )),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
