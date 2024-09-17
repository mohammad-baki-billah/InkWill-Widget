import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: InkWell(
        onTap: () {
          print('On Tap');
        },
        onDoubleTap: () {
          print('Double Tap');
        },
        onLongPress: () {
          print('Long Press');
        },
        child: Center(
          child: Container(
            height: 200,
            width: 180,
            color: Colors.yellow,
            child: Center(
              child: InkWell(
                onTap: () {
                  print('On Taped Click Here!');
                },
                child: const Text(
                  'Click Here!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
