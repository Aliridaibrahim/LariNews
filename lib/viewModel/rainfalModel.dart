import 'package:flutter/material.dart';
import 'package:larinew/model/larimodel.dart';
import 'package:larinew/services/webservices.dart';

class Rainfalll with ChangeNotifier{

  List<LariviewModel>meta;

  Future<void>fetchTopdatas() async{
    final meta = await Webservice().fetchdatas();
    this.meta =meta.rainfall.map((meta) => LariviewModel(meta)).toList();
    notifyListeners();
  }
}
class LariviewModel {

  final Rainfall rainfall;
  LariviewModel(this.rainfall);
  int get id {
    return rainfall.id;
  }
  String get nameArabic {
    return rainfall.nameArabic;
  }
  double get currentDay {
    return rainfall.currentDay;
  }
  double get currentYear {
    return rainfall.currentYear;
  }
  int get lastYear {
    return rainfall.lastYear;
  }
  int get average {
    return rainfall.average;
  }
  DateTime get lastUpdated {
    return rainfall.lastUpdated;
  }
}