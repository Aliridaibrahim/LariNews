import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/larimodel.dart';

class Webservice {
  Future<Meta> fetchdatas() async {
    String url = "https://mobileapi.lari-leb.org/mobile";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final larimodel = Larimodel.fromJson(json);
        return larimodel.meta;
      }
    } catch (exception) {
      if (kDebugMode) {
        print(exception);
      }
      if (kDebugMode) {
        print("Problem parsing data from the server ,,,,,,,,");
      }
    }
  }
}
