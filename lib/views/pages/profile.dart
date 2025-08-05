import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextField(
            onEditingComplete: () {
              setState(() {

              });
            },
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
          ),
          Text(controller.text)
        ],
      ),
    );
  }
}