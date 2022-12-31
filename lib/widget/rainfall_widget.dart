import 'package:flutter/material.dart';
import 'package:larinew/widget/pageview_images.dart';
import 'package:provider/provider.dart';

import '../Screens/homepage.dart';
import '../viewModel/rainfalModel.dart';
import 'drawer.dart';

class RainfallWidget extends StatefulWidget {
  const RainfallWidget({Key key}) : super(key: key);

  @override
  State<RainfallWidget> createState() => _RainfallWidgetState();
}

class _RainfallWidgetState extends State<RainfallWidget> {
  List<Imagees> imagees = [];
  List<Rainfalll> meta = [];
  int page = 0;
  bool isLast = false;

  PageController pageController = PageController(
    initialPage: 0,
  );

  _RainfallWidgetState();

  @override
  void initState() {
    super.initState();
    Provider.of<Rainfalll>(context, listen: false).fetchTopdatas();

    imagees = rawData.map((data) => Imagees(imaged: data['imaged'])).toList();
  }

  void onPageViewChange(int _page) {
    page = _page;
    isLast = _page == meta.length - 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final dat = Provider.of<Rainfalll>(context);

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
          title: const Text("مجموع الامطار"),
          leading: IconButton(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage())),
              icon: const Icon(Icons.refresh)),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Stack(
                  children: <Widget>[
                    PageView.builder(
                      onPageChanged: onPageViewChange,
                      controller: pageController,
                      itemCount: dat.meta.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: InkWell(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Text(
                                      dat.meta[index].nameArabic,
                                    ),
                                  ),
                                ),
                                Align(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Image.asset(imagees[index].imaged ??
                                        'default value'),
                                  ),
                                ),
                                Align(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        210, 20, 0, 0),
                                    child: Text(
                                      "${dat.meta[index].lastUpdated.month} "
                                      "${dat.meta[index].lastUpdated.hour} "
                                      "${dat.meta[index].lastUpdated.day}"
                                      " ${dat.meta[index].lastUpdated.minute} : اخر تحديث ",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Align(
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          240, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "ml ${dat.meta[index].currentDay}",
                                          ),
                                          const Text(" :حتـ اليوم "),
                                        ],
                                      )),
                                ),
                                Align(
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          220, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            "ml ${dat.meta[index].average}",
                                          ),
                                          const Text("  : العام المنصرم "),
                                        ],
                                      )),
                                ),
                                Align(
                                  child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          165, 0, 0, 0),
                                      child: Row(
                                        children: [
                                          Text(
                                            " ml ${dat.meta[index].currentYear}",
                                          ),
                                          const Text(
                                              " :المعدل العام لاخر الشهر "),
                                          //   +" ملم"
                                        ],
                                      )

                                      // Text(dat.meta[index].nameArabic ,

                                      ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 60,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: buildDots(context),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDots(BuildContext context) {
    final dat = Provider.of<Rainfalll>(context);
    Widget widget;

    List<Widget> dots = [];
    for (int i = 0; i < dat.meta.length; i++) {
      Widget w = Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 8,
        width: 8,
        child: CircleAvatar(
          backgroundColor: page == i ? Colors.red[400] : Colors.grey,
        ),
      );
      dots.add(w);
    }
    widget = Row(
      mainAxisSize: MainAxisSize.min,
      children: dots,
    );
    return widget;
  }
}
