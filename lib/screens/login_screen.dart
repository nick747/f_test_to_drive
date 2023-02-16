import 'package:f_test_to_drive/screens/homescreen.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(' '),
          Column(
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: name.clear,
                    icon: const Icon(Icons.clear),
                  ),
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.00),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 75,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                if (name.text != "" || name.text.length >= 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                } else {
                  _showSnackBar('Non puoi inserire un nome vuoto', context);
                }
              },
              child: const Text(
                ' E N T R A ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void _showSnackBar(String message, BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(message),
      action:
          SnackBarAction(label: 'X', onPressed: scaffold.hideCurrentSnackBar),
    ),
  );
}
