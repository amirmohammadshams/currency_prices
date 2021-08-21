import 'package:flutter/material.dart';
import 'package:animated_splash/animated_splash.dart';
import 'dart:io';
import 'dart:math';

import 'package:currency_prices/price_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'changeCurrency.dart';
import 'coin_data.dart';
import 'coinsList.dart';
import 'currencyList.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;
import 'package:persian_date/persian_date.dart';
import 'main_home.dart';
import 'menu_widget.dart';
import 'goldList.dart';
import 'menu_widget.dart';

var ran = Random().nextInt(11);

var CurrencyDatas;
var CoinsDatas;
var euro,
    nimCoin,
    robCoin,
    geramiCoin,
    imamiCoin,
    baharCoin,
    geram18,
    geram24,
    mesghal;
var base;
void main() {
  var euro_s;
  @override
  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    euro_s = (prefs.getString('counter') ?? 0);
    ;
  }

  Future<List<String>> getData() async {
    http.Response response =
        await http.get(Uri.parse("https://www.tgju.org/profile/price_eur"));
    dom.Document document = parser.parse(response.body);
    euro = document.querySelector('.price').text;
  }

  Future<List<String>> getImamiCoin() async {
    http.Response response =
        await http.get(Uri.parse("https://www.tgju.org/profile/sekee"));
    dom.Document document = parser.parse(response.body);
    imamiCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getBaharCoin() async {
    http.Response response =
        await http.get(Uri.parse("https://www.tgju.org/profile/sekeb"));
    dom.Document document = parser.parse(response.body);
    baharCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getNimCoin() async {
    http.Response response = await http.get(Uri.parse("https://www.tgju.org/profile/nim"));
    dom.Document document = parser.parse(response.body);
    nimCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getRobCoin() async {
    http.Response response = await http.get(Uri.parse("https://www.tgju.org/profile/rob"));
    dom.Document document = parser.parse(response.body);
    robCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getGeramiCoin() async {
    http.Response response =
        await http.get(Uri.parse("https://www.tgju.org/profile/gerami"));
    dom.Document document = parser.parse(response.body);
    geramiCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getMesghalGold() async {
    http.Response response =
        await http.get(Uri.parse("https://www.tgju.org/profile/mesghal"));
    dom.Document document = parser.parse(response.body);
    mesghal = document.querySelector('.price').text;
  }

  Future<List<String>> get18Gold() async {
    http.Response response =
        await http.get(Uri.parse("https://www.tgju.org/profile/geram18"));
    dom.Document document = parser.parse(response.body);
    geram18 = document.querySelector('.price').text;
  }

  Future<List<String>> get24Gold() async {
    http.Response response =
        await http.get(Uri.parse("https://www.tgju.org/profile/geram24"));
    dom.Document document = parser.parse(response.body);
    geram24 = document.querySelector('.price').text;
  }

  void getPrice() async {
    networking n = new networking('https://api.exchangerate.host/latest');
    CurrencyDatas = await n.getPrices();
  }

  void getCoin() async {
    networking c = new networking(
        'https://api.nomics.com/v1/currencies/ticker?key=2a502b3b0a7d2ae191582570de1c65a6&interval=1d,30d&convert=EUR&per-page=100&page=1');
    CoinsDatas = await c.getCoins();
  }

  void UpdateScreen(dynamic data) {
    base = data['base'];
  }

  Function duringSplash = () {
    getCoin();
    getPrice();
    getData();
    getNimCoin();
    getGeramiCoin();
    getRobCoin();
    getBaharCoin();
    getImamiCoin();
    getMesghalGold();
    get18Gold();
    get24Gold();
    int a = 123 + 23;

    if (a > 100)
      return 1;
    else
      return 2;
  };

  Map<int, Widget> op = {1: Home(), 2: HomeSt()};

  runApp(MaterialApp(
    home: AnimatedSplash(
      imagePath: 'images/icon.png',
      home: start(
          PriceScreen(CurrencyDatas, CoinsDatas, euro, geramiCoin, robCoin,
              nimCoin, baharCoin, imamiCoin, mesghal, geram18, geram24, ran),
          CurrencyDatas,
          CoinsDatas,
          euro,
          geramiCoin,
          robCoin,
          nimCoin,
          baharCoin,
          imamiCoin,
          mesghal,
          geram18,
          geram24,
          ran),
      customFunction: duringSplash,
      duration: 7000,
      type: AnimatedSplashType.BackgroundProcess,
      outputAndHome: op,
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return start(
        PriceScreen(CurrencyDatas, CoinsDatas, euro, geramiCoin, robCoin,
            nimCoin, baharCoin, imamiCoin, mesghal, geram18, geram24, ran),
        CurrencyDatas,
        CoinsDatas,
        euro,
        geramiCoin,
        robCoin,
        nimCoin,
        baharCoin,
        imamiCoin,
        mesghal,
        geram18,
        geram24,
        ran);
  }
}

class HomeSt extends StatefulWidget {
  @override
  _HomeStState createState() => _HomeStState();
}

class _HomeStState extends State<HomeSt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
            child: Text('My Cool App home page 2',
                style: TextStyle(color: Colors.black, fontSize: 20.0))));
  }
}
