import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "你好",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
    throw UnimplementedError();
  }
}