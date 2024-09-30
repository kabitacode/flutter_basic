import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double textSize = 10.0;
  String? programming;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(8),
          child: const Text("Store House",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        ),
        Container(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    SizedBox(height: 8.0),
                    Text('Open Everyday')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.access_time_filled_sharp),
                    SizedBox(height: 8.0),
                    Text('10:00 - 21:00')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.money),
                    SizedBox(height: 8.0),
                    Text("25")
                  ],
                )
              ],
            )),
        // ignore: avoid_unnecessary_containers
        Container(
          child: const Text(
            "Amazon is the largest online retail store in the world today. Amazon focuses on developing its e-commerce system, why is that? This is because all consumers want is convenience when making purchases.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15.0),
          ),
        ),
        DropdownButton<String>(
            items: const <DropdownMenuItem<String>>[
              DropdownMenuItem<String>(value: 'Dart', child: Text('Dart')),
              DropdownMenuItem<String>(
                value: 'Kotlin',
                child: Text('Kotlin'),
              ),
              DropdownMenuItem<String>(
                value: 'Swift',
                child: Text('Swift'),
              ),
            ],
            value: programming,
            onChanged: (String? value) {
              setState(() {
                programming = value;
              });
            })
      ],
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
