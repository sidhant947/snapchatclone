import 'package:flutter/material.dart';

class PeopleSnap extends StatelessWidget {
  const PeopleSnap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stories"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.amberAccent,
          ),
        ),
        actions: [Icon(Icons.settings)],
      ),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 0, 255, 38),
        ),
      ),
    );
  }
}
