import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isObscure = true;

  void toggleObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 120),
          Image.asset('assets/images/Main.png'),
          TextFormField(
            controller: usernameController,
            decoration: InputDecoration(label: Text('Username')),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: passwordController,
            obscureText: isObscure,
            decoration: InputDecoration(
              label: Text('Password'),
              suffixIcon: GestureDetector(
                onTap: () {
                  toggleObscure();
                },
                child: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text('Login')),
        ],
      ),
    );
  }
}
