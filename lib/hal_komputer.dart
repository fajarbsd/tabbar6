import 'package:flutter/material.dart';

class Komputer extends StatelessWidget {
  const Komputer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20.0),
          ),
          const Text(
            "KOMPUTER",
            style: TextStyle(fontSize: 30.0),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Image.asset(
            "img/laptop.png",
            width: 200.0,
          )
        ],
      ),
    );
  }
}
