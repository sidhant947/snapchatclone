import 'package:flutter/material.dart';

class LensSnap extends StatelessWidget {
  const LensSnap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.amberAccent,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 252, 67, 0),
        ),
      ),
    );
  }
}
