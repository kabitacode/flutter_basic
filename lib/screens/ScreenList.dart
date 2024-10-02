import 'package:flutter/material.dart';

class ScreenList extends StatelessWidget {
  const ScreenList({Key? key}) : super(key: key);

  final List<int> list = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: list.map((val) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(
              '$val',
              style: const TextStyle(fontSize: 50),
            ),
          ),
        );
      }).toList()),
    );
  }
}

class ScreenList2 extends StatelessWidget {
  ScreenList2({Key? key}) : super(key: key);

  final List<int> list = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            '${list[index]}',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      );
    }));
  }
}

class ScreenList3 extends StatelessWidget {
  ScreenList3({Key? key}) : super(key: key);

  final List<int> list = <int>[1, 2, 3, 4, 5, 6, 7, 8];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${list[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemCount: list.length);
  }
}
