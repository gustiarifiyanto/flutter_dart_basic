import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Belajar Mandiri Icon'),
        elevation: 2,
        actions: [Icon(Icons.settings), SizedBox(width: 10)],
      ),
      body: Stack(
        children: [
          AspectRatio(
            aspectRatio: 10 / 3,
            child: Container(
              alignment: Alignment.centerRight,
              child: Icon(Icons.star, size: 50, color: Colors.amber),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Icon(Icons.star, size: 100, color: Colors.blueAccent),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.star, size: 50, color: Colors.amber),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.blue,
              child: Text(
                'Ini Stack Widget',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
