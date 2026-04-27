import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text('Click${clickCounter == 1 ? '' : 's'}', style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'decrement-btn',
            onPressed: () {
              clickCounter--;
              setState(() {});
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'cero-btn',
            onPressed: () {
              clickCounter = 0;
              //hay que avisarle a flutter cuando YO quiero que se vuelva a renderizar el estado
              setState(() {});
            },
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'increment-btn',
            onPressed: () {
              clickCounter++;
              //hay que avisarle a flutter cuando YO quiero que se vuelva a renderizar el estado
              setState(() {});
            },
            child: const Icon(Icons.plus_one),
          ),
        ],
      ),
    );
  }
}
