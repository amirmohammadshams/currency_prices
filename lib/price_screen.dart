import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oktoast/oktoast.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'changeCurrency.dart';
import 'coin_data.dart';
import 'coinsList.dart';
import 'currencyList.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;
import 'package:persian_date/persian_date.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'main.dart';
import 'main_home.dart';
import 'menu_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'goldList.dart';

class PriceScreen extends StatefulWidget {
  PriceScreen(this.cdata, this.coins, this.euro, this.g, this.r, this.n, this.b,
      this.i, this.m, this.g18, this.g24, this.ran);
  var cdata, coins, euro, g, r, n, b, i, m, g18, g24, ran;
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  var euro_s;
  var i;
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

  final RoundedLoadingButtonController _btnController1 =
      new RoundedLoadingButtonController();
  final RoundedLoadingButtonController _btnController2 =
      new RoundedLoadingButtonController();
  final RoundedLoadingButtonController _btnController3 =
      new RoundedLoadingButtonController();
  final RoundedLoadingButtonController _btnController4 =
      new RoundedLoadingButtonController();

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      euro_s = (prefs.getString('counter') ?? '1,0');
    });
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString('counter', euro);
    });
  }



  Future<List<String>> getData() async {
    http.Response response =
        await http.get(Uri.parse("https://www.tgju.org/profile/price_eur"));
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
    setState(() {
      base = data['base'];
    });
  }

  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    PersianDate persianDate = PersianDate();
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


    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/bg/${widget.ran}.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          )),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: Card(
                            color: Colors.white60,
                            shadowColor: Colors.blueAccent,
                            margin: EdgeInsets.fromLTRB(12, 15, 12, 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 20, 8, 5),
                                  child: RoundedLoadingButton(
                                    color: Colors.blueGrey,
                                    child: Text(
                                      'Currency rates',
                                      style: TextStyle(
                                        fontFamily: 'num',
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    controller: _btnController1,
                                    onPressed: () async {
                                      getData();
                                      getPrice();
                                      Timer(Duration(seconds: 2), () {
                                        if (CurrencyDatas == null ||
                                            euro == null) {
                                          if (euro_s != null &&
                                              CurrencyDatas != null &&
                                              euro == null) {
                                            if (int.parse(euro_s.split(',').join() )> 20) {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return start(CurrencyList(
                                                    CurrencyDatas,
                                                    euro_s,
                                                    widget.ran),CurrencyDatas, CoinsDatas, euro, geramiCoin, robCoin,
                                                    nimCoin, baharCoin, imamiCoin, mesghal, geram18, geram24, ran);
                                              }));
                                            }else{   showToast(
                                                "No internet access - try again");}
                                          } else {
                                            showToast(
                                                "No internet access - try again");
                                          }
                                        } else {
                                          _incrementCounter();
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return start(CurrencyList(
                                                CurrencyDatas,
                                                euro,
                                                widget.ran),CurrencyDatas, CoinsDatas, euro, geramiCoin, robCoin,
                                                nimCoin, baharCoin, imamiCoin, mesghal, geram18, geram24, ran);
                                          }));
                                        }
                                        _btnController1.stop();
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 15, 8, 5),
                                  child: RoundedLoadingButton(
                                    color: Colors.blueGrey,
                                    child: Text(
                                      'Digital exchange rates',
                                      style: TextStyle(
                                        fontFamily: 'num',
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    controller: _btnController2,
                                    onPressed: () async {
                                      getCoin();
                                      getPrice();
                                      Timer(Duration(seconds: 2), () {
                                        if (CoinsDatas == null ||
                                            euro == null) {
                                          if (euro_s != null &&
                                              CoinsDatas != null) {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return start(coinsList(CoinsDatas,
                                                  euro_s, widget.ran),CurrencyDatas, CoinsDatas, euro, geramiCoin, robCoin,
                                                  nimCoin, baharCoin, imamiCoin, mesghal, geram18, geram24, ran);
                                            }));
                                          } else {
                                            showToast(
                                                "No internet access - try again");
                                          }
                                        } else {
                                          _incrementCounter();
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return start(coinsList(
                                                CoinsDatas, euro, widget.ran),CurrencyDatas, CoinsDatas, euro, geramiCoin, robCoin,
                                                nimCoin, baharCoin, imamiCoin, mesghal, geram18, geram24, ran);
                                          }));
                                        }
                                        _btnController2.stop();
                                      });
                                    },
                                  ),
                                ),
                                (persianDate.year == 1399 && persianDate.month == 8 && persianDate.day < 13)? Container():
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 15, 8, 5),
                                  child: RoundedLoadingButton(
                                    color: Colors.blueGrey,
                                    child: Text(
                                      'Gold and Coin Rates',
                                      style: TextStyle(
                                        fontFamily: 'num',
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    controller: _btnController3,
                                    onPressed: () async {
                                      getNimCoin();
                                      getGeramiCoin();
                                      getRobCoin();
                                      getBaharCoin();
                                      getImamiCoin();
                                      getMesghalGold();
                                      get18Gold();
                                      get24Gold();
                                      Timer(Duration(seconds: 4), () {
                                        if (nimCoin == null ||
                                            baharCoin == null ||
                                            geram24 == null ||
                                            mesghal == null) {
                                          showToast(
                                              "No internet access - try again");
                                        } else {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return start(goldsList(
                                                nimCoin,
                                                geramiCoin,
                                                robCoin,
                                                imamiCoin,
                                                baharCoin,
                                                geram18,
                                                geram24,
                                                mesghal,
                                                widget.ran),CurrencyDatas, CoinsDatas, euro, geramiCoin, robCoin,
                                                nimCoin, baharCoin, imamiCoin, mesghal, geram18, geram24, ran);
                                          }));
                                        }
                                        _btnController3.stop();
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 15, 8, 20),
                                  child: RoundedLoadingButton(
                                    color: Colors.blueGrey,
                                    child: Text(
                                      'Convert currencies',
                                      style: TextStyle(
                                        fontFamily: 'num',
                                        fontSize: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    controller: _btnController4,
                                    onPressed: () async {
                                      getCoin();
                                      getPrice();
                                      getData();

                                      Timer(Duration(seconds: 2), () {
                                        if (CurrencyDatas == null ||
                                            CoinsDatas == null ||
                                            euro == null) {
                                          if (euro_s != null &&
                                              CurrencyDatas != null &&
                                              CoinsDatas != null) {
                                          } else {
                                            showToast(
                                                "No internet access - try again");
                                          }
                                        } else {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return start(changeCurrency(
                                                CurrencyDatas,
                                                CoinsDatas,
                                                euro,
                                                widget.ran),CurrencyDatas, CoinsDatas, euro, geramiCoin, robCoin,
                                                nimCoin, baharCoin, imamiCoin, mesghal, geram18, geram24, ran);
                                          }));
                                        }
                                        _btnController4.stop();
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
