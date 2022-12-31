import 'package:flutter/material.dart';
import 'package:larinew/widget/bottomNavigation_bar.dart';
import 'package:larinew/widget/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "الاخبار",
        ),
        leading: IconButton(
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomePage())),
            icon: const Icon(Icons.refresh)),
      ),
      endDrawer: const Drawer(
        child: AppDrawer(),
      ),
      bottomNavigationBar: const BottomNavidationBar(),
      //AppDrawer()
    );
  }
}
