import 'package:flutter/material.dart';

class ListviewBuilderWidget extends StatelessWidget {
  const ListviewBuilderWidget({super.key});

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
        title: const Text('Belajar ListView builder Widget'),
        elevation: 2,
        actions: [Icon(Icons.home_filled), SizedBox(width: 10)],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(categories[index]),
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text(
                  categories[index][0].toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
