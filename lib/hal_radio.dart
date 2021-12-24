import 'package:flutter/material.dart';

class Radio extends StatelessWidget {
  const Radio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Text(
            "RADIO",
            style: TextStyle(fontSize: 30.0),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
          Image(
            image: NetworkImage(
                "https://e7.pngegg.com/pngimages/939/913/png-clipart-talk-radio-fm-broadcasting-radio-electronics-orange.png"),
            width: 200.0,
          )
        ],
      ),
    );
  }
}
