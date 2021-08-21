import 'dart:math';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart' as inn;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html/parser.dart';

import 'main.dart';

class changeCurrency extends StatefulWidget {
  changeCurrency(this.currency, this.coins, this.rial, this.ran);
  final currency, coins, rial , ran;

  @override
  _changeCurrencyState createState() => _changeCurrencyState();
}

class _changeCurrencyState extends State<changeCurrency> {
  double usd, eur, jpy, gbp, aud, cad, chf, cny, irr, btc;
  var first = 0;
  var second = 0;
  var amount = 1.0;
  var bg;
  final oCcy = new inn.NumberFormat("#,##0", "en_US");

  @override
  void initState() {
    super.initState();
    UpdateScreen(widget.currency);
  }

  void UpdateScreen(dynamic data) {
    setState(() {
      usd = data['rates']['USD'];
      jpy = data['rates']['JPY'];
      gbp = data['rates']['GBP'];
      aud = data['rates']['AUD'];
      cad = data['rates']['CAD'];
      chf = data['rates']['CHF'];
      cny = data['rates']['CNY'];
      btc = data['rates']['BTC'];
      irr = double.parse(widget.rial.split(',').join());
      eur = double.parse('1');
    });
  }

  double getPrice(i) {
    switch (i) {
      case 0:
        return irr;
        break;
      case 1:
        return usd;
        break;
      case 2:
        return 1.0;
        break;
      case 3:
        return jpy;
        break;
      case 4:
        return gbp;
        break;
      case 5:
        return aud;
        break;
      case 6:
        return cad;
        break;
      case 7:
        return chf;
        break;
      case 8:
        return cny;
        break;
      case 9:
        return btc;
        break;
    }

  }
  String getSign(i) {
    switch (i) {
      case 1:
        return 'dollars';
        break;
      case 2:
        return 'Euro';
        break;
      case 3:
        return 'yen';
        break;
      case 4:
        return 'pound';
        break;
      case 5:
        return 'Australian Dollar';
        break;
      case 6:
        return 'Canadian dollars';
        break;
      case 7:
        return 'Frank';
        break;
      case 8:
        return 'Yuan';
        break;
    }}
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    print(getPrice(widget.rial));
    print(getPrice(second));
    print(amount);
    return MaterialApp(

      home: Directionality(
    textDirection: TextDirection.rtl,
    child: Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/bg/${widget.ran}.jpg'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.8), BlendMode.dstATop),
      )),
      child: SafeArea(
        child: ListView(
          children: [

            Card(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              color: Colors.white70,
              shadowColor: Colors.blueGrey,
              child: Column(
                children: [
                  Text('Primary currency unit:',
                      style: TextStyle(
                          fontFamily: 'num', color: Color(0xffd35400))),

                  Container(
                      height: 150.0,
                      alignment: Alignment.bottomRight,
                      child: CupertinoPicker(
                        itemExtent: 32.0,
                        looping: true,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            first = index;
                          });
                        },
                        children: [
                          Text('lira',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('U.S. dollar',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('Euro Europe',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('Yen',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('British pound',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('Australian dollar',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('Canadian Dollar',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('Switzerland Frank',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('Chinese Yuan',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400))),
                          Text('Bitcoin',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xffd35400)))
                        ],
                      )),
                  ///////
                  Text('Initial currency amount:',
                      style: TextStyle(
                          fontFamily: 'num', color: Color(0xffd35400))),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 7, 30, 1),
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: TextField(
                        style: TextStyle(
                            fontFamily: 'num', color: Color(0xffd35400)),
                        textDirection: TextDirection.ltr,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,

                            fillColor: Colors.white70,
                            hintText: '1',
                            hintStyle:
                                TextStyle(color: Color(0xfff39c12), fontFamily: 'num',),

                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)))),
                        onChanged: (value) {
                          setState(() {
                            amount = double.parse(value);
                          });
                        },
                      ),
                    ),
                  ),
                  /////
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 4,
                      child: Container(
                        color: Color(0xff2980b9),
                      ),
                    ),
                  ),

                  Text('Second currency:',
                      style: TextStyle(fontFamily: 'num', color: Color(0xff2980b9))),
                  Container(
                      height: 150.0,
                      alignment: Alignment.center,
                      child: CupertinoPicker(
                        looping: true,
                        itemExtent: 32.0,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            second = index;
                          });
                        },
                        children: [
                          Text('lira',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('U.S. dollar',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('Euro Europe',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('Yen',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('British pound',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('Australian dollar',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('Canadian Dollar',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('Switzerland Frank',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('Chinese Yuan',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9))),
                          Text('Bitcoin',
                              style: TextStyle(
                                  fontFamily: 'num', color: Color(0xff2980b9)))
                        ],
                      )),
                  Card(
                      margin: EdgeInsets.all(8.0),
                      color: Colors.white70,
                      shadowColor: Color(0xff2980b9),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('Second currency value:',
                                style: TextStyle(
                                    fontFamily: 'num', color: Color(0xff2980b9))),
                            (second == 0)
                                ? Text((oCcy.format(double.parse(((amount * getPrice(second)) /
                                getPrice(first))
                                .toStringAsFixed(0))))
                                     + ' lira',
                                    style: TextStyle(
                                        fontFamily: 'num',
                                        fontSize: 25,
                                        color: Color(0xff2980b9)))
                                : (second == 9)
                                    ? Text(
                                        ((amount * getPrice(second)) /
                                                getPrice(first))
                                            .toStringAsFixed(5) + 'Bitcoin',
                                        style: TextStyle(
                                            fontFamily: 'num',
                                            fontSize: 25,
                                            color: Color(0xff2980b9)))
                                    : Text(
                                        ((amount * getPrice(second)) /
                                                getPrice(first))
                                            .toStringAsFixed(2) + ' ${getSign(second)}',
                                        style: TextStyle(
                                            fontFamily: 'num',
                                            fontSize: 25,
                                            color: Color(0xff2980b9)))
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    )),
      ),
    );
  }
}
