import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 1, counter = 0;
  String str = 'Tap on dice';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "Mini ludo😂",
              style: TextStyle(color: Colors.amber),
              textAlign: TextAlign.center,
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  counter++;
                  setState(() {
                    index = Random().nextInt(5) + 1;
                    if (index < 5 && counter >= 5) {
                      str = "No";
                    } else if (counter >= 5 && index == 6) {
                      str = "WOW....😂👌";
                    }
                  });
                },
                child: Image.asset(
                  "dice/dice$index.png",
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                str,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
