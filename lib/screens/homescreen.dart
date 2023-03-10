import 'package:flutter/material.dart';
import './login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ciao ${name.text}!', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w800),),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
    );
  }
}