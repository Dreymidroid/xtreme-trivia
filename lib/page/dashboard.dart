import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});
  static String routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("dashboard"),
      ),
    );
  }
}