import 'package:flutter/material.dart';

import './hal_komputer.dart' as komputer;
import './hal_radio.dart' as radio;
import './hal_headset.dart' as headset;
import './hal_smartphone.dart' as hp;

void main() {
  runApp(const MaterialApp(
    title: "Tab Bar",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  //widget dinamis, dapat mengubah, update tampilan data
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //respons dari override stateful
  TabController? controller; //controller tab bar
  @override
  void initState() {
    controller = TabController(length: 4, vsync: this); //controller tab bar
    super.initState();
  }

  @override
  void dispose() {
    //dispose controller tab bar
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Daftar Elektronik"),
        bottom: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.computer),
              text: "Komputer",
            ),
            Tab(
              icon: Icon(Icons.headset),
              text: "Headset",
            ),
            Tab(
              icon: Icon(Icons.radio),
              text: "Radio",
            ),
            Tab(
              icon: Icon(Icons.smartphone),
              text: "Smartphone",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          komputer.Komputer(),
          headset.Headset(),
          radio.Radio(),
          hp.Smartphone(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.orange,
        child: TabBar(
          controller: controller,
          tabs: const <Widget>[
            Tab(
              icon: Icon(Icons.computer),
            ),
            Tab(
              icon: Icon(Icons.headset),
            ),
            Tab(
              icon: Icon(Icons.radio),
            ),
            Tab(
              icon: Icon(Icons.smartphone),
            ),
          ],
        ),
      ),
    );
  }
}
