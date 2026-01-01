import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final nameController = TextEditingController();

  List<String> bahasa = ['indonesia', 'inggris', 'sunda'];
  @override
  void dispose() {
    nameController.dispose();
    super.dispose;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form aja'), elevation: 2),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              label: Text('Name'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          DropdownButton<String>(
            value: bahasa.first,
            items: bahasa.map((data) {
              return DropdownMenuItem(value: data, child: Text(data));
            }).toList(),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
