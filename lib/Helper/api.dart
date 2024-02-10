import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  dynamic getRequest(String url) async {
    try {
      http.Response response;
      response = await http.get(
        Uri.parse(url),
      );
      return jsonDecode(response.body);
    } catch (e) {
      return {'articles': []};
    }
  }
}
