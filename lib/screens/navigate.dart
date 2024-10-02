import 'package:flutter/material.dart';

class Navigate extends StatelessWidget {
  const Navigate({Key? key}) : super(key: key);

  final String message = "hello bro";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondScreen(message);
            }));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String message;
  const SecondScreen(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text('Kembali $message'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
