
import 'package:flutter/material.dart';
import 'package:larinew/widget/news_widget.dart';
import 'package:provider/provider.dart';
import '../viewModel/newsModel.dart';

class News extends StatefulWidget {
  const News({Key key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}
class _NewsState extends State<News> {
  List<News> meta = [];
  @override
  void initState() {
    super.initState();
    Provider.of<Larilist>(context, listen: false).fetchTopdatas();
  }
  @override
  Widget build(BuildContext context) {
    final datt = Provider.of<Larilist>(context);
    return Scaffold(
      body: _builddatt(datt),
    );
  }
  Widget _builddatt(Larilist datt) {
    if (datt.meta == null) {
      return const Align(child: CircularProgressIndicator());
    } else if (datt.meta.isEmpty) {
      return const Align(child: Text("Cannot fetch data."));
    } else {
      return _newss(context);
    }
  }
  Widget _newss(BuildContext context) {
    return const NewsWidget();
  }
}


