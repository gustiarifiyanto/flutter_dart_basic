import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Belajar Mandiri Icon'),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 10)],
      ),
      body: Center(child: Icon(Icons.star, size: 50, color: Colors.amber)),
    );
  }
}
