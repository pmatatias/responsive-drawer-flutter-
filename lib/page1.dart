import 'package:flutter/material.dart';
import 'package:responsive_drawer/mydrawer.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const MyDrawer(),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: const Text("Page 1"),
      ),
    );
  }
}
