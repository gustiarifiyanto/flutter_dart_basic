import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ini Halaman 2', style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Ke halaman 1 Lagi'),
            ),
          ],
        ),
      ),
    );
  }
}
