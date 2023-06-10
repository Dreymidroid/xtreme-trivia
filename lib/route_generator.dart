import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(
  RouteSettings settings,
) {
  return MaterialPageRoute<void>(
    settings: settings,
    builder: (BuildContext context) {
      switch (settings.name) {
        
        default:
          return const Scaffold(
            body: Center(
              child: Text("route does not exist"),
            ),
          );
      }
    },
  );
}
