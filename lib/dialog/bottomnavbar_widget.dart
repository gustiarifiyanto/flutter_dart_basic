import 'package:flutter/material.dart';

class BottomnavbarWidget extends StatefulWidget {
  const BottomnavbarWidget({super.key});

  @override
  State<BottomnavbarWidget> createState() => _BottomnavbarWidgetState();
}

class _BottomnavbarWidgetState extends State<BottomnavbarWidget> {
  int currentIndex = 0;

  void handleTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
        currentIndex: currentIndex,
        onTap: handleTap,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
