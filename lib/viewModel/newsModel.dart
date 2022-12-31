import 'package:flutter/material.dart';
import '../model/larimodel.dart';
import '../services/webservices.dart';

class Larilist with ChangeNotifier{
   List<LariviewModel> meta;
  Future<void>fetchTopdatas() async{
    final meta = await Webservice().fetchdatas();
    this.meta =meta.news.map((meta) => LariviewModel(meta)).toList();

    notifyListeners();
  }
}
class LariviewModel{
  final News news;
  LariviewModel(this.news,);
  int get id{
    return news.id;
  }
  DateTime get issueDate{
    return news.issueDate;
  }
  int get isPrimary{
    return news.isPrimary;
  }
  String get title{
    return news.title;
  }
  String get description{
    return news.description;
  }
  Language get language{
    return news.language;
  }
  String get reference{
    return news.reference;
  }
  String get image{
    return news.image;
  }
  List get multimedia{
    return news.multimedia;
  }
  String get type{
    return news.type;
  }
  
}
