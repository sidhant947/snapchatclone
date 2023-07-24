import 'package:flutter/material.dart';

class MapSnap extends StatelessWidget {
  const MapSnap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snap Map"),
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
          color: Colors.orangeAccent,
        ),
      ),
    );
  }
}
