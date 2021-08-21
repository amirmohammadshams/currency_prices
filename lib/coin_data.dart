import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class networking {
  networking(this.url);
  String url;

  Future GetData() async {
    Response response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jBody = response.body;
      var decode = jsonDecode(jBody);
      return decode;
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getPrices() async {
    networking Net = networking('https://api.exchangerate.host/latest');
    var outCome = await Net.GetData();
    return outCome;
  }

  Future<dynamic> getCoins() async {
    networking Net = networking(
        'https://api.nomics.com/v1/currencies/ticker?key=2a502b3b0a7d2ae191582570de1c65a6&interval=1d,30d&convert=EUR&per-page=100&page=1');
    var outCome = await Net.GetData();
    return outCome;
  }
}
