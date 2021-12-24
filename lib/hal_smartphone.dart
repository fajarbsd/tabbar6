import 'package:flutter/material.dart';

class Smartphone extends StatelessWidget {
  const Smartphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Text(
            "SMARTPHONE",
            style: TextStyle(fontSize: 30.0),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Image(
              image: NetworkImage(
                  "https://w7.pngwing.com/pngs/703/970/png-transparent-telephone-call-home-business-phones-plain-old-telephone-service-telephone-number-history-of-nokia-telephone-call-home-business-phones-sound.png"),
              width: 200.0)
        ],
      ),
    );
  }
}
