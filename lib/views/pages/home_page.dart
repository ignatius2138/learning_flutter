import 'package:flutter/material.dart';
import 'package:flutter_test_app/data/notifiers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            if (selectedTheme.value == Brightness.light) {
              selectedTheme.value = Brightness.dark;
            } else {
              selectedTheme.value = Brightness.light;
            }
          },
          child: Text("Change Theme")
      ),
    );
  }
}
