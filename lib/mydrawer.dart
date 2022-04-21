import 'package:flutter/material.dart';
import 'package:responsive_drawer/responsive.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  if (!Responsive.isDesktop(context)) const CloseButton(),
                ],
              ),
              DrawerHeader(
                  child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.blueGrey,
                child: const Text("Header"),
              )),
              ListTile(
                leading: const Icon(Icons.ac_unit_outlined),
                title: const Text("Ac Unit"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.access_alarm),
                title: const Text("Access Alarm"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.accessibility),
                title: const Text("Accessibility"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.account_balance),
                title: const Text("Account Balance"),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
