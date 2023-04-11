import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// flutter SDK 3개의 core Widget중 하나를 상속 받아야한다
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  List<int> numbers = [];

  void onIncreaseButton() {
    setState(() {
      counter++;
    });
  }

  void onDecreaseButton() {
    setState(() {
      counter--;
    });
  }

  void onClickAddNumber() {
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const LargeTitle(),
              Text(
                '$counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              for (var number in numbers) Text('$number'),
              IconButton(
                onPressed: onClickAddNumber,
                icon: const Icon(Icons.add_alarm_sharp),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onIncreaseButton,
                    icon: const Icon(Icons.plus_one),
                  ),
                  IconButton(
                    onPressed: onDecreaseButton,
                    icon: const Icon(Icons.exposure_minus_1_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LargeTitle extends StatelessWidget {
  const LargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Click Count',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of((context)).textTheme.titleLarge!.color,
      ),
    );
  }
}
