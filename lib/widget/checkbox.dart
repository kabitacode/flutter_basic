import 'package:flutter/material.dart';
import 'package:flutter_basic/screens/FirstScreen.dart';

class _FirstScreenState extends State<FirstScreen> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value) {
            setState(() {
              agree = value!;
            });
          },
        ),
        title: Text('Agree / Disagree'),
      ),
    );
  }
}
