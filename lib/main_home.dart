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
import 'menu_widget.dart';
import 'goldList.dart';
import 'menu_widget.dart';

class start extends StatefulWidget {
  start(this.p, this.cdata, this.coins, this.euro, this.g, this.r, this.n, this.b,
      this.i, this.m, this.g18, this.g24, this.ran);
  var p;
  var cdata, coins, euro, g, r, n, b, i, m, g18, g24, ran;

  @override
  _startState createState() => _startState();
}

class _startState extends State<start> {
  GlobalKey<SliderMenuContainerState> _key =
  new GlobalKey<SliderMenuContainerState>();
  String title;
  var page;
  var euro_s;
  @override
  void initState() {
    _loadCounter();

    title ="exchange rate";
    super.initState();
    if (widget.p != null) {
      page = widget.p;
    }
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      euro_s = (prefs.getString('counter') ?? 0);
    });
  }

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
  Future<List<String>> getData() async {
    http.Response response =
    await http.get(Uri.parse('https://www.tgju.org/profile/price_eur'));
    dom.Document document = parser.parse(response.body);
    euro = document.querySelector('.price').text;
  }

  Future<List<String>> getImamiCoin() async {
    http.Response response =
    await http.get(Uri.parse('https://www.tgju.org/profile/sekee'));
    dom.Document document = parser.parse(response.body);
    imamiCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getBaharCoin() async {
    http.Response response =
    await http.get(Uri.parse('https://www.tgju.org/profile/sekeb'));
    dom.Document document = parser.parse(response.body);
    baharCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getNimCoin() async {
    http.Response response = await http.get(Uri.parse('https://www.tgju.org/profile/nim'));
    dom.Document document = parser.parse(response.body);
    nimCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getRobCoin() async {
    http.Response response = await http.get(Uri.parse('https://www.tgju.org/profile/rob'));
    dom.Document document = parser.parse(response.body);
    robCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getGeramiCoin() async {
    http.Response response =
    await http.get(Uri.parse('https://www.tgju.org/profile/gerami'));
    dom.Document document = parser.parse(response.body);
    geramiCoin = document.querySelector('.price').text;
  }

  Future<List<String>> getMesghalGold() async {
    http.Response response =
    await http.get(Uri.parse('https://www.tgju.org/profile/mesghal'));
    dom.Document document = parser.parse(response.body);
    mesghal = document.querySelector('.price').text;
  }

  Future<List<String>> get18Gold() async {
    http.Response response =
    await http.get(Uri.parse('https://www.tgju.org/profile/geram18'));
    dom.Document document = parser.parse(response.body);
    geram18 = document.querySelector('.price').text;
  }

  Future<List<String>> get24Gold() async {
    http.Response response =
    await http.get(Uri.parse('https://www.tgju.org/profile/geram24'));
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
    setState(() {
      base = data['base'];
    });
  }

  @override
  Widget build(BuildContext context) {

    CurrencyDatas = widget.cdata;
    CoinsDatas = widget.coins;
    euro = widget.euro;
    geramiCoin = widget.g;
    robCoin = widget.r;
    nimCoin = widget.n;
    baharCoin = widget.b;
    imamiCoin = widget.i;
    mesghal = widget.m;
    geram18 = widget.g18;
    geram24 = widget.g24;

    return OKToast(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: SliderMenuContainer(
              // sliderOpen: SliderOpen.RIGHT_TO_LEFT,
              appBarColor: Colors.blueGrey,
              drawerIconColor: Colors.white,
              key: _key,
              appBarPadding: const EdgeInsets.only(top: 20),
              // sliderMenuOpenOffset: 250,
              appBarHeight: 60,
              title: Text(
                title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'num',
                    color: Colors.white),
              ),
              sliderMenu: MenuWidget(
                onItemClick: (title) {
                  _key.currentState.closeDrawer();
                  setState(() {
                    this.title = title;
                    if (title == 'Currency rates') {
                      if (CurrencyDatas != null && euro != null) {
                        page = CurrencyList(CurrencyDatas, euro, ran);
                      } else {
                        if (CurrencyDatas != null && euro_s != null) {
                          page = CurrencyList(CurrencyDatas, euro_s, ran);
                        } else {
                          showToast(
                              "No internet access - try again");
                        }
                      }
                    }
                    if (title == 'Home') {
                      page = PriceScreen(
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
                    if (title == 'Digital exchange rates') {
                      if (CoinsDatas != null && euro != null) {
                        page = coinsList(CoinsDatas, euro, ran);
                      } else {
                        if (CoinsDatas != null && euro_s != null) {
                          page = coinsList(CoinsDatas, euro_s, ran);
                        } else {
                          showToast(
                              "No internet access - try again");
                        }
                      }
                      if (title == 'Gold and Coin Rates') {
                        if (nimCoin != null && geram18 != null) {
                          page = goldsList(
                              nimCoin,
                              geramiCoin,
                              robCoin,
                              imamiCoin,
                              baharCoin,
                              geram18,
                              geram24,
                              mesghal,
                              ran);
                        } else {
                          showToast(
                              "No internet access - try again");
                        }
                      }
                      if (title == 'Currency Converter') {
                        if (CurrencyDatas != null && euro != null) {
                          page = changeCurrency(
                              CurrencyDatas, CoinsDatas, euro, ran);
                        } else {
                          if (CoinsDatas != null &&
                              euro_s != null &&
                              CurrencyDatas != null) {
                            page = changeCurrency(
                                CurrencyDatas, CoinsDatas, euro_s, ran);
                          } else {}
                          showToast(
                              "No internet access - try again");
                        }
                      }
                    }
                  });
                },
              ),
              sliderMain: page,
            ),
          )),
    );
  }
}
