import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final nameController = TextEditingController();

  List<String> bahasa = ['indonesia', 'inggris', 'sunda'];
  bool isOn = false;
  bool isCheck = false;

  String gender = 'male';
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
          SizedBox(height: 18),
          Row(
            children: [
              const Text('Connect IG'),
              const SizedBox(width: 9),
              Switch(
                value: isOn,
                onChanged: (bool? val) {
                  if (val != null) {
                    setState(() {
                      isOn = val;
                    });
                  }
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              const Text('Gender: '),
              const SizedBox(width: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 'male',
                    // ignore: deprecated_member_use
                    groupValue: gender,
                    // ignore: deprecated_member_use
                    onChanged: (String? val) {
                      setState(() {
                        if (val != null) {
                          gender = val;
                        }
                      });
                    },
                  ),
                  const Text('Male'),
                ],
              ),
              const SizedBox(width: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                    value: 'female',
                    // ignore: deprecated_member_use
                    groupValue: gender,
                    // ignore: deprecated_member_use
                    onChanged: (String? val) {
                      setState(() {
                        if (val != null) {
                          gender = val;
                        }
                      });
                    },
                  ),
                  const Text('Female'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: isCheck,
                activeColor: Colors.blueAccent,
                onChanged: (val) {
                  setState(() {
                    if (val != null) {
                      isCheck = val;
                    }
                  });
                },
              ),
              const SizedBox(width: 4),
              const Text(
                'Agree Term & Condition',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
