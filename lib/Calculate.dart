import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  int show_num = 0, one = 1, two = 2, three = 3, four = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Center(
                child: Container(
                  child: Text(
                    'show: $show_num',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(children: [
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                setState(() {
                                  show_num = one;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Text('1'),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              onPressed: () {
                                setState(() {
                                  show_num = two;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Text('2'),
                              ),
                            ),
                          ),
                        ])
                      ]))),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(height: 16), // Optional spacing between the buttons
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                      ),
                      onPressed: () {
                        setState(() {
                          show_num = three;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text('3'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        setState(() {
                          show_num = four;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text('4'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
