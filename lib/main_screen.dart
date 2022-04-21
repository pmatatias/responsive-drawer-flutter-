import 'package:flutter/material.dart';
import 'package:responsive_drawer/page1.dart';
import 'package:responsive_drawer/page2.dart';
import 'package:responsive_drawer/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: Column(
          children: const [Expanded(child: Page1()), Expanded(child: Page2())],
        ),
        tablet: Row(
          children: const [
            Expanded(flex: 1, child: Page1()),
            Expanded(flex: 2, child: Page2())
          ],
        ),
        desktop: Row(
          children: const [Expanded(child: Page1()), Expanded(child: Page2())],
        ),
      ),
    );
  }
}
