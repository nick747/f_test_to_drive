import './screens/login_screen.dart';
import './screens/homescreen.dart';
import 'package:flutter/material.dart';

const darkPurple = 0xff9B5DE5;
const grey = 0xff898989;
const yellow = 0xffFEE440;
const blue = 0xff00BBF9;
const magenta = 0xffF15BB5;
const red = 0xffF2574D;
const green = 0xff3CFF38;

Map<int, Color> color = {
  50: const Color(darkPurple),
  100: const Color(darkPurple),
  200: const Color(darkPurple),
  300: const Color(darkPurple),
  400: const Color(darkPurple),
  500: const Color(darkPurple),
  600: const Color(darkPurple),
  700: const Color(darkPurple),
  800: const Color(darkPurple),
  900: const Color(darkPurple),
};

void changePage() {}

MaterialColor primaryColor = MaterialColor(0xff9B5DE5, color);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test2Drive',
      theme: ThemeData(primarySwatch: primaryColor, fontFamily: 'Overpass'),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Test2Drive'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test2Drive'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: LoginScreen(),
      ),
    );
  }
}
