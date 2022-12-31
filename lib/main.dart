import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:larinew/viewModel/newsModel.dart';
import 'package:larinew/viewModel/rainfalModel.dart';
import 'package:provider/provider.dart';
import 'Screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Larilist>(
          create: (context) => Larilist(),
        ),
        ChangeNotifierProvider<Rainfalll>(
          create: (context) => Rainfalll(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const HomePage(),
      ),
    );
  }
}
