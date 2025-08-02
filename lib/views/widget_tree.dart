import 'package:flutter/material.dart';
import 'package:flutter_test_app/data/notifiers.dart';
import 'package:flutter_test_app/views/pages/home_page.dart';
import 'package:flutter_test_app/views/pages/profile.dart';
import 'package:flutter_test_app/views/widgets/navBar_widget.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage()
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Kydja"), centerTitle: true),
        body: ValueListenableBuilder(valueListenable: selectedPageNotifier,
            builder: (context, selectedPage, child) {
              return pages.elementAt(selectedPage);
            },),
        bottomNavigationBar: NavbarWidget()
    );
  }
}
