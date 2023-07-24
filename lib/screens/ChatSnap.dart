import 'package:flutter/material.dart';

class ChatSnap extends StatelessWidget {
  const ChatSnap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chat"),
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
        body: ListView.builder(
            itemCount: 300,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 75,
                      child: Row(children: [
                        CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                    "Name",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.crop_square,
                                        size: 8,
                                      ),
                                      Text(
                                        "Received",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Icon(Icons.circle, size: 8),
                                      Text(
                                        "1h",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Icon(Icons.circle, size: 8),
                                      Text(
                                        "69",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Icon(
                                          Icons
                                              .align_horizontal_center_outlined,
                                          size: 8)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 50,
                          ),
                        ),
                      ]),
                    ),
                    Divider(
                      thickness: 1,
                    )
                  ],
                ),
              );
            })));
  }
}
