import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Kydja"), centerTitle: true),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.plus_one),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text("Header")),
              ListTile(title: Text("Logout"),)
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.ac_unit), label: "Home"),
            NavigationDestination(
              icon: Icon(Icons.abc_sharp),
              label: "Second Screen",
            ),
          ],
        ),
      ),
    );
  }
}
