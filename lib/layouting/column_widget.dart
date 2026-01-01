import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Belajar Mandiri Icon'),
        elevation: 2,
        actions: [Icon(Icons.home_filled), SizedBox(width: 10)],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'bukan saya',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 70),
            Text(
              'bukan kamu',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            Expanded(
              child: Card(
                child: Text(
                  'Rp. 1.000.000',
                  style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
