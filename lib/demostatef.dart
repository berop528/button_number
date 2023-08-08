import 'package:flutter/material.dart';

class DemoStateFul extends StatefulWidget {
  const DemoStateFul({super.key});

  @override
  State<DemoStateFul> createState() => _DemoStateFulState();
}

class _DemoStateFulState extends State<DemoStateFul> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Test State Ful')),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Count: $counter'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter += 1111222000000;
                });
              },
              child: Text('Click me'),
            )
          ],
        )));
  }
}
