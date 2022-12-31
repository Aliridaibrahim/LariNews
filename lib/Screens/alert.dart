import 'package:flutter/material.dart';
import 'package:larinew/Screens/homepage.dart';
import 'package:larinew/widget/drawer.dart';

class Alerts extends StatefulWidget {
  const Alerts({Key key}) : super(key: key);

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/image_14.jpg',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        endDrawer: const Drawer(
          child: AppDrawer(),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("الانذار المبكر"),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage())),
              icon: const Icon(Icons.refresh)),
        ),
      ),
    );
  }
}
