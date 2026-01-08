import 'package:flutter/material.dart';
import 'package:flutter_dart_basic/navigation/page_two.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return PageTwo();
                },
              ),
            );
          },
          child: Text(
            'Ini Halaman 1',
            style: TextStyle(fontSize: 30, color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
