import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  Random random = Random();
  int x = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text(
            'Lottery App',
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lottery winning num is $x'),
            SizedBox(height: 20),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: x == 2
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.done_all , color: Colors.green, size: 35),
                          SizedBox(height: 20),
                          Text(
                            'Hurrii we won we rich now, your number is $x',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.error, color: Colors.red, size: 35),
                          SizedBox(height: 20),
                          Text(
                            'Better luck next time, you number is $x',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(5);
          print(x.toString());
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
