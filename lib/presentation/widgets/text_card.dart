import 'package:flutter/material.dart';

class TextCard extends StatelessWidget {
  const TextCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.green.shade200,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        )));
  }
}
