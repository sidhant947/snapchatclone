import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Spotlight extends StatefulWidget {
  @override
  _SpotlightState createState() => _SpotlightState();
}

class _SpotlightState extends State<Spotlight> {
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Spotlight"),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.amberAccent,
            ),
          ),
        ),
        body: Container(
          child: PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            children: [
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: ((context, index) {
                    return Center(
                      child: Container(
                        color: (index % 2 == 0) ? Colors.red : Colors.green,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                      ),
                    );
                  })),
            ],
          ),
        ));
  }
}
