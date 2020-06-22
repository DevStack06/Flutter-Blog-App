import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class NetworkHandler {
  String baseurl = "https://sheltered-waters-80365.herokuapp.com";
  var log = Logger();

  Future<dynamic> get(String url) async {
    url = formater(url);
    // /user/register
    var response = await http.get(url);
    log.i(response.body);
    log.i(response.statusCode);
  }

  Future<dynamic> post(String url, Map<String, String> body) async {
    url = formater(url);
    log.d(body);
    var response = await http.post(url, body: body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      log.i(response.body);

      return response;
    }
    log.d(response.body);
    log.d(response.statusCode);
  }

  String formater(String url) {
    return baseurl + url;
  }
}
