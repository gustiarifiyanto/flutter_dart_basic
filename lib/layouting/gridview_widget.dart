import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  final List<String> categories = const [
    'All',
    'popular',
    'new',
    'recommended',
    'featured',
    'trending',
    'exclusive',
    'All',
    'popular',
    'new',
    'recommended',
    'featured',
    'trending',
    'exclusive',
    'All',
    'popular',
    'new',
    'recommended',
    'featured',
    'trending',
    'exclusive',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Belajar GrdiView Widget'),
        elevation: 2,
        actions: [Icon(Icons.home_filled), SizedBox(width: 10)],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(child: Center(child: Text(categories[index])));
        },
        itemCount: categories.length,
      ),
    );
  }
}
