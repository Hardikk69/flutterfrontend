import 'dart:convert';

import 'package:http/http.dart' as http;

class Student {
  String url = 'http://127.0.0.1:8000/app/student/';

  Future<List> getAllstudent() async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
        return Future.error('Server Error');
    }
  }
}
