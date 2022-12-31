import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewModel/rainfalModel.dart';
import '../widget/rainfall_widget.dart';

class Raiinfall extends StatefulWidget {
  const Raiinfall({Key key}) : super(key: key);

  @override
  _RaiinfallState createState() => _RaiinfallState();
}

class _RaiinfallState extends State<Raiinfall> {


  @override
  void initState() {
    super.initState();
    Provider.of<Rainfalll>(context, listen: false).fetchTopdatas();

  }

  Widget build(BuildContext context) {
    final dat = Provider.of<Rainfalll>(context);
    return Scaffold(
      body: _builddat(dat),
    );
  }

  Widget _builddat(Rainfalll dat) {
    if (dat.meta == null) {
      return const Align(child: CircularProgressIndicator());
    } else if (dat.meta.isEmpty) {
      return const Align(child: Text("Cannot fetch data."));
    } else {
      return _rainfalll(context);
    }
  }

  Widget _rainfalll(BuildContext context) {
    return const Scaffold(body: RainfallWidget());
  }
}
