import 'dart:math';
import 'package:persian_date/persian_date.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html/parser.dart';

class goldsList extends StatefulWidget {
  goldsList(this.nimC, this.geramiC, this.robC, this.imamiC, this.baharC,
      this.g18, this.g24, this.mesghal,this.ran);
  final nimC, geramiC, robC, imamiC, baharC, mesghal, g18, g24,ran;

  @override
  _goldsListState createState() => _goldsListState();
}

class _goldsListState extends State<goldsList> {
  @override
  void initState() {
    super.initState();
  }

  Widget currency(var name, var shortName, var price , double size) {
    return Card(
      margin: EdgeInsets.fromLTRB(12, 7, 12, 4),
      color: Colors.white70,
      shadowColor: Colors.orange,
      child: ListTile(
        leading: Image(
          image: AssetImage('images/gold/coin.png'), height: size,
        ),
        title: Text(name, style: TextStyle(fontFamily: 'num')),
        trailing: Text(price + ' lira',
            style: TextStyle(fontFamily: 'num', fontSize: 17)),
      ),
    );
  }

  Widget currency2(var name, var shortName, var price) {
    return Card(
      margin: EdgeInsets.fromLTRB(12, 7, 12, 4),
      color: Colors.white70,
      shadowColor: Colors.yellow,
      child: ListTile(
        leading: Image(
          image: AssetImage('images/gold/gold.png'), height: 35,
        ),
        title: Text(name, style: TextStyle(fontFamily: 'num')),
        trailing: Text(price + ' lira',
            style: TextStyle(fontFamily: 'num', fontSize: 17)),
      ),
    );
  }

  Widget build(BuildContext context) {
    PersianDate persianDate = PersianDate();

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
          child: ListView(
            children: [
              currency('Emami Coin', 'imami', widget.imamiC,40),
              currency('gold coin', 'bahar', widget.baharC,35),
              currency('half coin', 'nim', widget.nimC,30),
              currency('Quarter coins', 'rob', widget.robC,25),
              currency('Hot coin', 'gerami', widget.geramiC,20),
              currency2('Gold Rate', 'mesghal', widget.mesghal),
              currency2('18k gold', 'g18', widget.g18),
              currency2('24 carat gold', 'g24', widget.g24),
            ],
          ),
        )),
      ),
    );
  }
}
