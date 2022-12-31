import 'package:flutter/material.dart';
import 'package:larinew/Screens/homepage.dart';
import 'package:provider/provider.dart';

import '../viewModel/newsModel.dart';
import 'drawer.dart';
import 'showDialogFunc.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({Key key}) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    final datt = Provider.of<Larilist>(context);
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/image_14.jpg',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        endDrawer: const Drawer(
          child: AppDrawer(),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("الاخبار"),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage())),
              icon: const Icon(Icons.refresh)),
        ),
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[
                    ListView.builder(
                        itemCount: datt.meta.length,
                        itemBuilder: (context, index) {
                          return Container(
                              margin: const EdgeInsets.all(10.0),
                              padding: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueAccent),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: InkWell(
                                  //   splashColor: Colors.black26,
                                  child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                      child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(250, 0, 0, 0),
                                    child: Text(
                                      "${datt.meta[index].issueDate.month}"
                                      " ${datt.meta[index].issueDate.hour}"
                                      " ${datt.meta[index].issueDate.day}"
                                      " ${datt.meta[index].issueDate.minute}",
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  )),
                                  Align(
                                    child: _buildImage(context, index),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Stack(
                                    children: [
                                      Align(
                                        child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                150, 0, 0, 0),
                                            child: GestureDetector(
                                              child: Text(
                                                datt.meta[index].title ??
                                                    'default value',
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black),
                                              ),
                                              onTap: () {
                                                showDialogFunc(context,datt.meta[index].title,datt.meta[index].description);
                                              },
                                            )),
                                      ),
                                      const Align(
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 20, 250, 5),
                                          child: Text("عرض المزيد",
                                              style:
                                                  TextStyle(color: Colors.red)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  )
                                ],
                              )));
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildImage(BuildContext context, index) {
  final datt = Provider.of<Larilist>(context);
  try {
    return Image.network(
      datt.meta[index].image,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace stackTrace) {
        return const Image(image: AssetImage('assets/images/lariimage.jpeg'));
      },
      fit: BoxFit.cover,
      height: 230,
      width: 450,
    );
  } catch (e) {
    print(e);
  }
}