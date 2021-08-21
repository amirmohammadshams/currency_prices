import 'dart:collection';
import 'dart:math';
import 'package:persian_date/persian_date.dart';
import 'package:intl/intl.dart' as inn;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html/parser.dart';

class coinsList extends StatefulWidget {
  coinsList(this.data, this.euro, this.ran);

  final data;
  final euro;
  var ran;

  @override
  _coinsListState createState() => _coinsListState();
}

class _coinsListState extends State<coinsList> {
  List c1,
      c2,
      c3,
      c4,
      c5,
      c6,
      c7,
      c8,
      c9,
      c10,
      c11,
      c12,
      c13,
      c14,
      c15,
      c16,
      c17,
      c18,
      c19,
      c20,
      c21,
      c22,
      c23,
      c24,
      c25,
      c26,
      c27,
      c28,
      c29,
      c30,
      c31,
      c32,
      c33,
      c34,
      c35,
      c36,
      c37,
      c38,
      c39,
      c40,
      c41,
      c42,
      c43,
      c44,
      c45,
      c46,
      c47,
      c48,
      c49,
      c50,
      c51,
      c52,
      c53,
      c54,
      c55,
      c56,
      c57,
      c58,
      c59,
      c60,
      c61,
      c62,
      c63,
      c64,
      c65,
      c66,
      c67,
      c68,
      c69,
      c70,
      c71,
      c72,
      c73,
      c74,
      c75,
      c76,
      c77,
      c78,
      c79,
      c80,
      c81,
      c82,
      c83,
      c84,
      c85,
      c86,
      c87,
      c88,
      c89,
      c90,
      c91,
      c92,
      c93,
      c94,
      c95,
      c96,
      c97,
      c98,
      c99,
      c100;
  final oCcy = new inn.NumberFormat("#,##0", "en_US");

  String nameOfCoin (id) {
    switch (id) {
      case 'BTC':
        {
          return 'Bitcoin';
        }
        break;
      case 'ETH':
        {
          return 'Atrium';
        }
        break;
      case 'USDT':
        {
          return 'USDT';
        }
        break;
      case 'XRP':
        {
          return 'Ripple';
        }
        break;
      case 'BNB':
        {
          return 'Baines Quinn';
        }
        break;
      case 'LINK':
        {
          return 'China Link';
        }
        break;
      case 'BCH':
        {
          return 'Bitcoin Cache';
        }
        break;
      case 'DOT':
        {
          return 'Polkadat';
        }
        break;
      case 'ADA':
        {
          return 'Cardano';
        }
        break;
      case 'LTC':
        {
          return 'LightQueen';
        }
        break;
      case 'BSV':
        {
          return 'Satoshi Vision';
        }
        break;
      case 'CRO':
        {
          return 'Crypto';
        }
        break;
      case 'USDC':
        {
          return 'USQ Quinn';
        }
        break;
      case 'EOS':
        {
          return 'EOS';
        }
        break;
      case 'XMR':
        {
          return 'Monroe';
        }
        break;
      case 'TRX':
        {
          return 'Theron';
        }
        break;
      case 'XTZ':
        {
          return 'Thesis';
        }
        break;
      case 'OKB':
        {
          return 'OKB';
        }
        break;
      case 'XLM':
        {
          return 'Stellar';
        }
        break;
      case 'HEX':
        {
          return 'Hex';
        }
        break;
      case 'ATOM':
        {
          return 'Kazmas';
        }
        break;
      case 'NEO':
        {
          return 'New';
        }
        break;
      case 'CDAI':
        {
          return 'Compound Dye';
        }
        break;
      case 'LEO':
        {
          return 'Leo';
        }
        break;
      case 'WBTC':
        {
          return 'Wrapped Bitcoin';
        }
        break;
      case 'XEM':
        {
          return 'XEM';
        }
        break;
      case 'HT':
        {
          return 'Hobby Token';
        }
        break;
      case 'DAI':
        {
          return 'DAI';
        }
        break;
      case 'IoT':
        {
          return 'Iota';
        }
        break;
      case 'ZEC':
        {
          return 'Zi Kesh';
        }
        break;
      case 'VET':
        {
          return 'Wei China';
        }
        break;
      case 'THETA':
        {
          return 'theta';
        }
        break;
      case 'BUSD':
        {
          return 'Dollar Bainance';
        }
        break;
      case 'DASH':
        {
          return 'dash';
        }
        break;
      case 'UNI':
        {
          return 'Uni swap';
        }
        break;
      case 'LEND':
        {
          return 'LEND';
        }
        break;
      case 'ETC':
        {
          return 'Classic Atrium';
        }
        break;
      case 'SNX':
        {
          return 'Network Syntax';
        }
        break;
      case 'MKR':
        {
          return 'maker';
        }
        break;
      case 'OMG':
        {
          return 'OMG';
        }
        break;
      case 'YFI':
        {
          return 'Yern Finance';
        }
        break;
      case 'CEL':
        {
          return 'Celsius';
        }
        break;
      case 'UMA':
        {
          return 'Oma';
        }
        break;
      case 'COMP':
        {
          return 'Compound';
        }
        break;
      case 'ONT':
        {
          return 'Anthology';
        }
        break;
      case 'TUSD':
        {
          return 'TrueUSD';
        }
        break;
      case 'CETH':
        {
          return 'Component Ether';
        }
        break;
      case 'DGB':
        {
          return 'DigiByte';
        }
        break;
      case 'DOGE':
        {
          return 'Dodge Quinn';
        }
        break;
      case 'BAT':
        {
          return 'idol';
        }
        break;
      case 'REN':
        {
          return 'REN';
        }
        break;
      case 'FTXTOKEN':
        {
          return 'XT token';
        }
        break;
      case 'PAX':
        {
          return 'Paxus';
        }
        break;
      case 'AAVE':
        {
          return 'Aave';
        }
        break;
      case 'ZRX':
        {
          return 'Zero X';
        }
        break;
      case 'KSM':
        {
          return 'Kozama';
        }
        break;
      case 'ALGO':
        {
          return 'Algorithm';
        }
        break;
      case 'XWC':
        {
          return 'White Coin';
        }
        break;
      case 'WAVES':
        {
          return 'View';
        }
        break;
      case 'QTUM':
        {
          return 'Quantum';
        }
        break;
      case 'LRC':
        {
          return 'Looping';
        }
        break;
    }}

  @override
  void initState() {
    super.initState();
    UpdateScreen(widget.data);
  }

  void UpdateScreen(dynamic data) {
    setState(() {
      c1 = [
        data[0]['id'],
        data[0]['price'],
        data[0]['rank'],
        data[0]['1d']['price_change'],
        data[0]['30d']['price_change'],
        data[0]['logo_url']
      ];
      c2 = [
        data[1]['id'],
        data[1]['price'],
        data[1]['rank'],
        data[1]['1d']['price_change'],
        data[1]['30d']['price_change'],
        data[1]['logo_url']
      ];
      c3 = [
        data[2]['id'],
        data[2]['price'],
        data[2]['rank'],
        data[2]['1d']['price_change'],
        data[2]['30d']['price_change'],
        data[2]['logo_url']
      ];
      c4 = [
        data[3]['id'],
        data[3]['price'],
        data[3]['rank'],
        data[3]['1d']['price_change'],
        data[3]['30d']['price_change'],
        data[3]['logo_url']
      ];
      c5 = [
        data[4]['id'],
        data[4]['price'],
        data[4]['rank'],
        data[4]['1d']['price_change'],
        data[4]['30d']['price_change'],
        data[4]['logo_url']
      ];
      c6 = [
        data[5]['id'],
        data[5]['price'],
        data[5]['rank'],
        data[5]['1d']['price_change'],
        data[5]['30d']['price_change'],
        data[5]['logo_url']
      ];
      c7 = [
        data[6]['id'],
        data[6]['price'],
        data[6]['rank'],
        data[6]['1d']['price_change'],
        data[6]['30d']['price_change'],
        data[6]['logo_url']
      ];
      c8 = [
        data[7]['id'],
        data[7]['price'],
        data[7]['rank'],
        data[7]['1d']['price_change'],
        data[7]['30d']['price_change'],
        data[7]['logo_url']
      ];
      c9 = [
        data[8]['id'],
        data[8]['price'],
        data[8]['rank'],
        data[8]['1d']['price_change'],
        data[8]['30d']['price_change'],
        data[8]['logo_url']
      ];
      var x10 = data[9] as LinkedHashMap;
      c10 = [
        data[9]['id'],
        data[9]['price'],
        data[9]['rank'],
        (x10.containsKey('1d') ? data[9]['1d']['price_change'] : '0'),
        (x10.containsKey('30d') ? data[9]['30d']['price_change'] : '0'),
        data[9]['logo_url']
      ];
      var x11 = data[10] as LinkedHashMap;
      c11 = [
        data[10]['id'],
        data[10]['price'],
        data[10]['rank'],
        (x11.containsKey('1d') ? data[10]['1d']['price_change'] : '0'),
        (x11.containsKey('30d') ? data[10]['30d']['price_change'] : '0'),
        data[10]['logo_url']
      ];
      var x12 = data[11] as LinkedHashMap;

      c12 = [
        data[11]['id'],
        data[11]['price'],
        data[11]['rank'],
        data[11]['1d']['price_change'],
        (x12.containsKey('30d') ? data[11]['30d']['price_change'] : '0'),
        data[11]['logo_url']
      ];
      var x13 = data[12] as LinkedHashMap;

      c13 = [
        data[12]['id'],
        data[12]['price'],
        data[12]['rank'],
        (x13.containsKey('1d') ? data[12]['1d']['price_change'] : '0'),
        (x13.containsKey('30d') ? data[12]['30d']['price_change'] : '0'),
        data[12]['logo_url']
      ];
      var x14 = data[13] as LinkedHashMap;

      c14 = [
        data[13]['id'],
        data[13]['price'],
        data[13]['rank'],
        (x14.containsKey('1d') ? data[13]['1d']['price_change'] : '0'),
        (x14.containsKey('30d') ? data[13]['30d']['price_change'] : '0'),
        data[13]['logo_url']
      ];
      var x15 = data[14] as LinkedHashMap;

      c15 = [
        data[14]['id'],
        data[14]['price'],
        data[14]['rank'],
        (x15.containsKey('1d') ? data[14]['1d']['price_change'] : '0'),
        (x15.containsKey('30d') ? data[14]['30d']['price_change'] : '0'),
        data[14]['logo_url']
      ];
      var x16 = data[15] as LinkedHashMap;

      c16 = [
        data[15]['id'],
        data[15]['price'],
        data[15]['rank'],
        (x16.containsKey('1d') ? data[15]['1d']['price_change'] : '0'),
        (x16.containsKey('30d') ? data[15]['30d']['price_change'] : '0'),
        data[15]['logo_url']
      ];
      var x17 = data[16] as LinkedHashMap;

      c17 = [
        data[16]['id'],
        data[16]['price'],
        data[16]['rank'],
        (x17.containsKey('1d') ? data[16]['1d']['price_change'] : '0'),
        (x17.containsKey('30d') ? data[16]['30d']['price_change'] : '0'),
        data[16]['logo_url']
      ];
      var x18 = data[17] as LinkedHashMap;

      c18 = [
        data[17]['id'],
        data[17]['price'],
        data[17]['rank'],
        (x18.containsKey('1d') ? data[17]['1d']['price_change'] : '0'),
        (x18.containsKey('30d') ? data[17]['30d']['price_change'] : '0'),
        data[17]['logo_url']
      ];
      var x19 = data[18] as LinkedHashMap;

      c19 = [
        data[18]['id'],
        data[18]['price'],
        data[18]['rank'],
        (x19.containsKey('1d') ? data[18]['1d']['price_change'] : '0'),
        (x19.containsKey('30d') ? data[18]['30d']['price_change'] : '0'),
        data[18]['logo_url']
      ];
      var x20 = data[19] as LinkedHashMap;

      c20 = [
        data[19]['id'],
        data[19]['price'],
        data[19]['rank'],
        (x20.containsKey('1d') ? data[19]['1d']['price_change'] : '0'),
        (x20.containsKey('30d') ? data[19]['30d']['price_change'] : '0'),
        data[19]['logo_url']
      ];
      var x21 = data[20] as LinkedHashMap;

      c21 = [
        data[20]['id'],
        data[20]['price'],
        data[20]['rank'],
        (x21.containsKey('1d') ? data[20]['1d']['price_change'] : '0'),
        (x21.containsKey('30d') ? data[20]['30d']['price_change'] : '0'),
        data[20]['logo_url']
      ];
      var x22 = data[21] as LinkedHashMap;

      c22 = [
        data[21]['id'],
        data[21]['price'],
        data[21]['rank'],
        (x22.containsKey('1d') ? data[21]['1d']['price_change'] : '0'),
        (x22.containsKey('30d') ? data[21]['30d']['price_change'] : '0'),
        data[21]['logo_url']
      ];
      var x23 = data[22] as LinkedHashMap;

      c23 = [
        data[22]['id'],
        data[22]['price'],
        data[22]['rank'],
        (x23.containsKey('1d') ? data[22]['1d']['price_change'] : '0'),
        (x23.containsKey('30d') ? data[22]['30d']['price_change'] : '0'),
        data[22]['logo_url']
      ];
      var x24 = data[23] as LinkedHashMap;

      c24 = [
        data[23]['id'],
        data[23]['price'],
        data[23]['rank'],
        (x24.containsKey('1d') ? data[23]['1d']['price_change'] : '0'),
        (x24.containsKey('30d') ? data[23]['30d']['price_change'] : '0'),
        data[23]['logo_url']
      ];
      var x25 = data[24] as LinkedHashMap;

      c25 = [
        data[24]['id'],
        data[24]['price'],
        data[24]['rank'],
        (x25.containsKey('1d') ? data[24]['1d']['price_change'] : '0'),
        (x25.containsKey('30d') ? data[24]['30d']['price_change'] : '0'),
        data[24]['logo_url']
      ];
      var x26 = data[25] as LinkedHashMap;

      c26 = [
        data[25]['id'],
        data[25]['price'],
        data[25]['rank'],
        (x26.containsKey('1d') ? data[25]['1d']['price_change'] : '0'),
        (x26.containsKey('30d') ? data[25]['30d']['price_change'] : '0'),
        data[25]['logo_url']
      ];
      var x = data[30] as LinkedHashMap;
      var x1 = data[31] as LinkedHashMap;

      c31 = [
        data[30]['id'],
        data[30]['price'],
        data[30]['rank'],
        (x.containsKey('1d') ? data[30]['1d']['price_change'] : '0'),
        (x.containsKey('30d') ? data[30]['30d']['price_change'] : '0'),
        data[30]['logo_url'],
      ];
      c32 = [
        data[31]['id'],
        data[31]['price'],
        data[31]['rank'],
        (x1.containsKey('1d') ? data[31]['1d']['price_change'] : '0'),
        (x1.containsKey('30d') ? data[31]['30d']['price_change'] : '0'),
        data[31]['logo_url']
      ];
      var x27 = data[26] as LinkedHashMap;

      c27 = [
        data[26]['id'],
        data[26]['price'],
        data[26]['rank'],
        (x27.containsKey('1d') ? data[26]['1d']['price_change'] : '0'),
        (x27.containsKey('30d') ? data[26]['30d']['price_change'] : '0'),
        data[26]['logo_url']
      ];
      var x28 = data[27] as LinkedHashMap;

      c28 = [
        data[27]['id'],
        data[27]['price'],
        data[27]['rank'],
        (x28.containsKey('1d') ? data[27]['1d']['price_change'] : '0'),
        (x28.containsKey('30d') ? data[27]['30d']['price_change'] : '0'),
        data[27]['logo_url']
      ];
      var x29 = data[28] as LinkedHashMap;

      c29 = [
        data[28]['id'],
        data[28]['price'],
        data[28]['rank'],
        (x29.containsKey('1d') ? data[28]['1d']['price_change'] : '0'),
        (x29.containsKey('30d') ? data[28]['30d']['price_change'] : '0'),
        data[28]['logo_url']
      ];
      var x30 = data[29] as LinkedHashMap;

      c30 = [
        data[29]['id'],
        data[29]['price'],
        data[29]['rank'],
        (x30.containsKey('1d') ? data[29]['1d']['price_change'] : '0'),
        (x30.containsKey('30d') ? data[29]['30d']['price_change'] : '0'),
        data[29]['logo_url']
      ];
      var x33 = data[32] as LinkedHashMap;

      c33 = [
        data[32]['id'],
        data[32]['price'],
        data[32]['rank'],
        (x33.containsKey('1d') ? data[32]['1d']['price_change'] : '0'),
        (x33.containsKey('30d') ? data[32]['30d']['price_change'] : '0'),
        data[32]['logo_url']
      ];
      var x34 = data[33] as LinkedHashMap;

      c34 = [
        data[33]['id'],
        data[33]['price'],
        data[33]['rank'],
        (x34.containsKey('1d') ? data[33]['1d']['price_change'] : '0'),
        (x34.containsKey('30d') ? data[33]['30d']['price_change'] : '0'),
        data[33]['logo_url']
      ];
      var x35 = data[34] as LinkedHashMap;

      c35 = [
        data[34]['id'],
        data[34]['price'],
        data[34]['rank'],
        (x35.containsKey('1d') ? data[34]['1d']['price_change'] : '0'),
        (x35.containsKey('30d') ? data[34]['30d']['price_change'] : '0'),
        data[34]['logo_url']
      ];
      var x36 = data[35] as LinkedHashMap;

      c36 = [
        data[35]['id'],
        data[35]['price'],
        data[35]['rank'],
        (x36.containsKey('1d') ? data[35]['1d']['price_change'] : '0'),
        (x36.containsKey('30d') ? data[35]['30d']['price_change'] : '0'),
        data[35]['logo_url']
      ];
      var x37 = data[36] as LinkedHashMap;

      c37 = [
        data[36]['id'],
        data[36]['price'],
        data[36]['rank'],
        (x37.containsKey('1d') ? data[36]['1d']['price_change'] : '0'),
        (x37.containsKey('30d') ? data[36]['30d']['price_change'] : '0'),
        data[36]['logo_url']
      ];
      var x38 = data[37] as LinkedHashMap;

      c38 = [
        data[37]['id'],
        data[37]['price'],
        data[37]['rank'],
        (x38.containsKey('1d') ? data[37]['1d']['price_change'] : '0'),
        (x38.containsKey('30d') ? data[37]['30d']['price_change'] : '0'),
        data[37]['logo_url']
      ];
      var x39 = data[38] as LinkedHashMap;

      c39 = [
        data[38]['id'],
        data[38]['price'],
        data[38]['rank'],
        (x39.containsKey('1d') ? data[38]['1d']['price_change'] : '0'),
        (x39.containsKey('30d') ? data[38]['30d']['price_change'] : '0'),
        data[38]['logo_url']
      ];
      var x40 = data[39] as LinkedHashMap;

      c40 = [
        data[39]['id'],
        data[39]['price'],
        data[39]['rank'],
        (x40.containsKey('1d') ? data[39]['1d']['price_change'] : '0'),
        (x40.containsKey('30d') ? data[39]['30d']['price_change'] : '0'),
        data[39]['logo_url']
      ];
      var x41 = data[40] as LinkedHashMap;

      c41 = [
        data[40]['id'],
        data[40]['price'],
        data[40]['rank'],
        (x41.containsKey('1d') ? data[40]['1d']['price_change'] : '0'),
        (x41.containsKey('30d') ? data[40]['30d']['price_change'] : '0'),
        data[40]['logo_url']
      ];
      var x42 = data[41] as LinkedHashMap;

      c42 = [
        data[41]['id'],
        data[41]['price'],
        data[41]['rank'],
        (x42.containsKey('1d') ? data[41]['1d']['price_change'] : '0'),
        (x42.containsKey('30d') ? data[41]['30d']['price_change'] : '0'),
        data[41]['logo_url']
      ];
      var x43 = data[42] as LinkedHashMap;

      c43 = [
        data[42]['id'],
        data[42]['price'],
        data[42]['rank'],
        (x43.containsKey('1d') ? data[42]['1d']['price_change'] : '0'),
        (x43.containsKey('30d') ? data[42]['30d']['price_change'] : '0'),
        data[42]['logo_url']
      ];
      var x44 = data[43] as LinkedHashMap;

      c44 = [
        data[43]['id'],
        data[43]['price'],
        data[43]['rank'],
        (x44.containsKey('1d') ? data[43]['1d']['price_change'] : '0'),
        (x44.containsKey('30d') ? data[43]['30d']['price_change'] : '0'),
        data[43]['logo_url']
      ];
      var x45 = data[44] as LinkedHashMap;

      c45 = [
        data[44]['id'],
        data[44]['price'],
        data[44]['rank'],
        (x45.containsKey('1d') ? data[44]['1d']['price_change'] : '0'),
        (x45.containsKey('30d') ? data[44]['30d']['price_change'] : '0'),
        data[44]['logo_url']
      ];
      var x46 = data[45] as LinkedHashMap;

      c46 = [
        data[45]['id'],
        data[45]['price'],
        data[45]['rank'],
        (x46.containsKey('1d') ? data[45]['1d']['price_change'] : '0'),
        (x46.containsKey('30d') ? data[45]['30d']['price_change'] : '0'),
        data[45]['logo_url']
      ];
      var x47 = data[46] as LinkedHashMap;

      c47 = [
        data[46]['id'],
        data[46]['price'],
        data[46]['rank'],
        (x47.containsKey('1d') ? data[46]['1d']['price_change'] : '0'),
        (x47.containsKey('30d') ? data[46]['30d']['price_change'] : '0'),
        data[46]['logo_url']
      ];
      var x48 = data[47] as LinkedHashMap;

      c48 = [
        data[47]['id'],
        data[47]['price'],
        data[47]['rank'],
        (x48.containsKey('1d') ? data[47]['1d']['price_change'] : '0'),
        (x48.containsKey('30d') ? data[47]['30d']['price_change'] : '0'),
        data[47]['logo_url']
      ];
      var x49 = data[48] as LinkedHashMap;

      c49 = [
        data[48]['id'],
        data[48]['price'],
        data[48]['rank'],
        (x49.containsKey('1d') ? data[48]['1d']['price_change'] : '0'),
        (x49.containsKey('30d') ? data[48]['30d']['price_change'] : '0'),
        data[48]['logo_url']
      ];
      var x50 = data[49] as LinkedHashMap;

      c50 = [
        data[49]['id'],
        data[49]['price'],
        data[49]['rank'],
        (x50.containsKey('1d') ? data[49]['1d']['price_change'] : '0'),
        (x50.containsKey('30d') ? data[49]['30d']['price_change'] : '0'),
        data[49]['logo_url']
      ];
      var x51 = data[50] as LinkedHashMap;

      c51 = [
        data[50]['id'],
        data[50]['price'],
        data[50]['rank'],
        (x51.containsKey('1d') ? data[50]['1d']['price_change'] : '0'),
        (x51.containsKey('30d') ? data[50]['30d']['price_change'] : '0'),
        data[50]['logo_url']
      ];
      var x52 = data[51] as LinkedHashMap;

      c52 = [
        data[51]['id'],
        data[51]['price'],
        data[51]['rank'],
        (x52.containsKey('1d') ? data[51]['1d']['price_change'] : '0'),
        (x52.containsKey('30d') ? data[51]['30d']['price_change'] : '0'),
        data[51]['logo_url']
      ];
      var x53 = data[52] as LinkedHashMap;

      c53 = [
        data[52]['id'],
        data[52]['price'],
        data[52]['rank'],
        (x53.containsKey('1d') ? data[52]['1d']['price_change'] : '0'),
        (x53.containsKey('30d') ? data[52]['30d']['price_change'] : '0'),
        data[52]['logo_url']
      ];
      var x54 = data[53] as LinkedHashMap;

      c54 = [
        data[53]['id'],
        data[53]['price'],
        data[53]['rank'],
        (x54.containsKey('1d') ? data[53]['1d']['price_change'] : '0'),
        (x54.containsKey('30d') ? data[53]['30d']['price_change'] : '0'),
        data[53]['logo_url']
      ];
      var x55 = data[54] as LinkedHashMap;

      c55 = [
        data[54]['id'],
        data[54]['price'],
        data[54]['rank'],
        (x55.containsKey('1d') ? data[54]['1d']['price_change'] : '0'),
        (x55.containsKey('30d') ? data[54]['30d']['price_change'] : '0'),
        data[54]['logo_url']
      ];
      var x56 = data[55] as LinkedHashMap;

      c56 = [
        data[55]['id'],
        data[55]['price'],
        data[55]['rank'],
        (x56.containsKey('1d') ? data[55]['1d']['price_change'] : '0'),
        (x56.containsKey('30d') ? data[55]['30d']['price_change'] : '0'),
        data[55]['logo_url']
      ];
      var x57 = data[56] as LinkedHashMap;

      c57 = [
        data[56]['id'],
        data[56]['price'],
        data[56]['rank'],
        (x57.containsKey('1d') ? data[56]['1d']['price_change'] : '0'),
        (x57.containsKey('30d') ? data[56]['30d']['price_change'] : '0'),
        data[56]['logo_url']
      ];
      var x58 = data[57] as LinkedHashMap;

      c58 = [
        data[57]['id'],
        data[57]['price'],
        data[57]['rank'],
        (x58.containsKey('1d') ? data[57]['1d']['price_change'] : '0'),
        (x58.containsKey('30d') ? data[57]['30d']['price_change'] : '0'),
        data[57]['logo_url']
      ];
      var x59 = data[58] as LinkedHashMap;

      c59 = [
        data[58]['id'],
        data[58]['price'],
        data[58]['rank'],
        (x59.containsKey('1d') ? data[58]['1d']['price_change'] : '0'),
        (x59.containsKey('30d') ? data[58]['30d']['price_change'] : '0'),
        data[58]['logo_url']
      ];
      var x60 = data[59] as LinkedHashMap;

      c60 = [
        data[59]['id'],
        data[59]['price'],
        data[59]['rank'],
        (x60.containsKey('1d') ? data[59]['1d']['price_change'] : '0'),
        (x60.containsKey('30d') ? data[59]['30d']['price_change'] : '0'),
        data[59]['logo_url']
      ];
      var x61 = data[60] as LinkedHashMap;

      c61 = [
        data[60]['id'],
        data[60]['price'],
        data[60]['rank'],
        (x61.containsKey('1d') ? data[60]['1d']['price_change'] : '0'),
        (x61.containsKey('30d') ? data[60]['30d']['price_change'] : '0'),
        data[60]['logo_url']
      ];
      var x62 = data[61] as LinkedHashMap;

      c62 = [
        data[61]['id'],
        data[61]['price'],
        data[61]['rank'],
        (x62.containsKey('1d') ? data[61]['1d']['price_change'] : '0'),
        (x62.containsKey('30d') ? data[61]['30d']['price_change'] : '0'),
        data[61]['logo_url']
      ];
      var x63 = data[62] as LinkedHashMap;

      c63 = [
        data[62]['id'],
        data[62]['price'],
        data[62]['rank'],
        (x63.containsKey('1d') ? data[62]['1d']['price_change'] : '0'),
        (x63.containsKey('30d') ? data[62]['30d']['price_change'] : '0'),
        data[62]['logo_url']
      ];
      var x64 = data[63] as LinkedHashMap;

      c64 = [
        data[63]['id'],
        data[63]['price'],
        data[63]['rank'],
        (x64.containsKey('1d') ? data[63]['1d']['price_change'] : '0'),
        (x64.containsKey('30d') ? data[63]['30d']['price_change'] : '0'),
        data[63]['logo_url']
      ];
      var x65 = data[64] as LinkedHashMap;

      c65 = [
        data[64]['id'],
        data[64]['price'],
        data[64]['rank'],
        (x65.containsKey('1d') ? data[64]['1d']['price_change'] : '0'),
        (x65.containsKey('30d') ? data[64]['30d']['price_change'] : '0'),
        data[64]['logo_url']
      ];
      var x66 = data[65] as LinkedHashMap;

      c66 = [
        data[65]['id'],
        data[65]['price'],
        data[65]['rank'],
        (x66.containsKey('1d') ? data[65]['1d']['price_change'] : '0'),
        (x66.containsKey('30d') ? data[65]['30d']['price_change'] : '0'),
        data[65]['logo_url']
      ];
      var x67 = data[66] as LinkedHashMap;

      c67 = [
        data[66]['id'],
        data[66]['price'],
        data[66]['rank'],
        (x67.containsKey('1d') ? data[66]['1d']['price_change'] : '0'),
        (x67.containsKey('30d') ? data[66]['30d']['price_change'] : '0'),
        data[66]['logo_url']
      ];
      var x68 = data[67] as LinkedHashMap;

      c68 = [
        data[67]['id'],
        data[67]['price'],
        data[67]['rank'],
        (x68.containsKey('1d') ? data[67]['1d']['price_change'] : '0'),
        (x68.containsKey('30d') ? data[67]['30d']['price_change'] : '0'),
        data[67]['logo_url']
      ];
      var x69 = data[68] as LinkedHashMap;

      c69 = [
        data[68]['id'],
        data[68]['price'],
        data[68]['rank'],
        (x69.containsKey('1d') ? data[68]['1d']['price_change'] : '0'),
        (x69.containsKey('30d') ? data[68]['30d']['price_change'] : '0'),
        data[68]['logo_url']
      ];
      var x70 = data[69] as LinkedHashMap;

      c70 = [
        data[69]['id'],
        data[69]['price'],
        data[69]['rank'],
        (x70.containsKey('1d') ? data[69]['1d']['price_change'] : '0'),
        (x70.containsKey('30d') ? data[69]['30d']['price_change'] : '0'),
        data[69]['logo_url']
      ];
      var x71 = data[70] as LinkedHashMap;

      c71 = [
        data[70]['id'],
        data[70]['price'],
        data[70]['rank'],
        (x71.containsKey('1d') ? data[70]['1d']['price_change'] : '0'),
        (x71.containsKey('30d') ? data[70]['30d']['price_change'] : '0'),
        data[70]['logo_url']
      ];
      var x72 = data[71] as LinkedHashMap;

      c72 = [
        data[71]['id'],
        data[71]['price'],
        data[71]['rank'],
        (x72.containsKey('1d') ? data[71]['1d']['price_change'] : '0'),
        (x72.containsKey('30d') ? data[71]['30d']['price_change'] : '0'),
        data[71]['logo_url']
      ];
      var x73 = data[72] as LinkedHashMap;

      c73 = [
        data[72]['id'],
        data[72]['price'],
        data[72]['rank'],
        (x73.containsKey('1d') ? data[72]['1d']['price_change'] : '0'),
        (x73.containsKey('30d') ? data[72]['30d']['price_change'] : '0'),
        data[72]['logo_url']
      ];
      var x74 = data[73] as LinkedHashMap;

      c74 = [
        data[73]['id'],
        data[73]['price'],
        data[73]['rank'],
        (x74.containsKey('1d') ? data[73]['1d']['price_change'] : '0'),
        (x74.containsKey('30d') ? data[73]['30d']['price_change'] : '0'),
        data[73]['logo_url']
      ];
      var x75 = data[74] as LinkedHashMap;

      c75 = [
        data[74]['id'],
        data[74]['price'],
        data[74]['rank'],
        (x75.containsKey('1d') ? data[74]['1d']['price_change'] : '0'),
        (x75.containsKey('30d') ? data[74]['30d']['price_change'] : '0'),
        data[74]['logo_url']
      ];
      var x76 = data[75] as LinkedHashMap;

      c76 = [
        data[75]['id'],
        data[75]['price'],
        data[75]['rank'],
        (x76.containsKey('1d') ? data[75]['1d']['price_change'] : '0'),
        (x76.containsKey('30d') ? data[75]['30d']['price_change'] : '0'),
        data[75]['logo_url']
      ];
      var x77 = data[76] as LinkedHashMap;

      c77 = [
        data[76]['id'],
        data[76]['price'],
        data[76]['rank'],
        (x77.containsKey('1d') ? data[76]['1d']['price_change'] : '0'),
        (x77.containsKey('30d') ? data[76]['30d']['price_change'] : '0'),
        data[76]['logo_url']
      ];
      var x78 = data[77] as LinkedHashMap;

      c78 = [
        data[77]['id'],
        data[77]['price'],
        data[77]['rank'],
        (x78.containsKey('1d') ? data[77]['1d']['price_change'] : '0'),
        (x78.containsKey('30d') ? data[77]['30d']['price_change'] : '0'),
        data[77]['logo_url']
      ];
      var x79 = data[78] as LinkedHashMap;

      c79 = [
        data[78]['id'],
        data[78]['price'],
        data[78]['rank'],
        (x79.containsKey('1d') ? data[78]['1d']['price_change'] : '0'),
        (x79.containsKey('30d') ? data[78]['30d']['price_change'] : '0'),
        data[78]['logo_url']
      ];
      var x80 = data[79] as LinkedHashMap;

      c80 = [
        data[79]['id'],
        data[79]['price'],
        data[79]['rank'],
        (x80.containsKey('1d') ? data[79]['1d']['price_change'] : '0'),
        (x80.containsKey('30d') ? data[79]['30d']['price_change'] : '0'),
        data[79]['logo_url']
      ];
      var x81 = data[80] as LinkedHashMap;

      c81 = [
        data[80]['id'],
        data[80]['price'],
        data[80]['rank'],
        (x81.containsKey('1d') ? data[80]['1d']['price_change'] : '0'),
        (x81.containsKey('30d') ? data[80]['30d']['price_change'] : '0'),
        data[80]['logo_url']
      ];
      var x82 = data[81] as LinkedHashMap;

      c82 = [
        data[81]['id'],
        data[81]['price'],
        data[81]['rank'],
        (x82.containsKey('1d') ? data[81]['1d']['price_change'] : '0'),
        (x82.containsKey('30d') ? data[81]['30d']['price_change'] : '0'),
        data[81]['logo_url']
      ];
      var x83 = data[82] as LinkedHashMap;

      c83 = [
        data[82]['id'],
        data[82]['price'],
        data[82]['rank'],
        (x83.containsKey('1d') ? data[82]['1d']['price_change'] : '0'),
        (x83.containsKey('30d') ? data[82]['30d']['price_change'] : '0'),
        data[82]['logo_url']
      ];
      var x84 = data[83] as LinkedHashMap;

      c84 = [
        data[83]['id'],
        data[83]['price'],
        data[83]['rank'],
        (x84.containsKey('1d') ? data[83]['1d']['price_change'] : '0'),
        (x84.containsKey('30d') ? data[83]['30d']['price_change'] : '0'),
        data[83]['logo_url']
      ];
      var x85 = data[84] as LinkedHashMap;

      c85 = [
        data[84]['id'],
        data[84]['price'],
        data[84]['rank'],
        (x85.containsKey('1d') ? data[84]['1d']['price_change'] : '0'),
        (x85.containsKey('30d') ? data[84]['30d']['price_change'] : '0'),
        data[84]['logo_url']
      ];
      var x86 = data[85] as LinkedHashMap;

      c86 = [
        data[85]['id'],
        data[85]['price'],
        data[85]['rank'],
        (x86.containsKey('1d') ? data[85]['1d']['price_change'] : '0'),
        (x86.containsKey('30d') ? data[85]['30d']['price_change'] : '0'),
        data[85]['logo_url']
      ];
      var x87 = data[86] as LinkedHashMap;

      c87 = [
        data[86]['id'],
        data[86]['price'],
        data[86]['rank'],
        (x87.containsKey('1d') ? data[86]['1d']['price_change'] : '0'),
        (x87.containsKey('30d') ? data[86]['30d']['price_change'] : '0'),
        data[86]['logo_url']
      ];
      var x88 = data[87] as LinkedHashMap;

      c88 = [
        data[87]['id'],
        data[87]['price'],
        data[87]['rank'],
        (x88.containsKey('1d') ? data[87]['1d']['price_change'] : '0'),
        (x88.containsKey('30d') ? data[87]['30d']['price_change'] : '0'),
        data[87]['logo_url']
      ];
      var x89 = data[88] as LinkedHashMap;

      c89 = [
        data[88]['id'],
        data[88]['price'],
        data[88]['rank'],
        (x89.containsKey('1d') ? data[88]['1d']['price_change'] : '0'),
        (x89.containsKey('30d') ? data[88]['30d']['price_change'] : '0'),
        data[88]['logo_url']
      ];
      var x90 = data[89] as LinkedHashMap;

      c90 = [
        data[89]['id'],
        data[89]['price'],
        data[89]['rank'],
        (x90.containsKey('1d') ? data[89]['1d']['price_change'] : '0'),
        (x90.containsKey('30d') ? data[89]['30d']['price_change'] : '0'),
        data[89]['logo_url']
      ];
      var x91 = data[90] as LinkedHashMap;

      c91 = [
        data[90]['id'],
        data[90]['price'],
        data[90]['rank'],
        (x91.containsKey('1d') ? data[90]['1d']['price_change'] : '0'),
        (x91.containsKey('30d') ? data[90]['30d']['price_change'] : '0'),
        data[90]['logo_url']
      ];
      var x92 = data[91] as LinkedHashMap;

      c92 = [
        data[91]['id'],
        data[91]['price'],
        data[91]['rank'],
        (x92.containsKey('1d') ? data[91]['1d']['price_change'] : '0'),
        (x92.containsKey('30d') ? data[91]['30d']['price_change'] : '0'),
        data[91]['logo_url']
      ];
      var x93 = data[92] as LinkedHashMap;

      c93 = [
        data[92]['id'],
        data[92]['price'],
        data[92]['rank'],
        (x93.containsKey('1d') ? data[92]['1d']['price_change'] : '0'),
        (x93.containsKey('30d') ? data[92]['30d']['price_change'] : '0'),
        data[92]['logo_url']
      ];
      var x94 = data[93] as LinkedHashMap;

      c94 = [
        data[93]['id'],
        data[93]['price'],
        data[93]['rank'],
        (x94.containsKey('1d') ? data[93]['1d']['price_change'] : '0'),
        (x94.containsKey('30d') ? data[93]['30d']['price_change'] : '0'),
        data[93]['logo_url']
      ];
      var x95 = data[94] as LinkedHashMap;

      c95 = [
        data[94]['id'],
        data[94]['price'],
        data[94]['rank'],
        (x95.containsKey('1d') ? data[94]['1d']['price_change'] : '0'),
        (x95.containsKey('30d') ? data[94]['30d']['price_change'] : '0'),
        data[94]['logo_url']
      ];
      var x96 = data[95] as LinkedHashMap;

      c96 = [
        data[95]['id'],
        data[95]['price'],
        data[95]['rank'],
        (x96.containsKey('1d') ? data[95]['1d']['price_change'] : '0'),
        (x96.containsKey('30d') ? data[95]['30d']['price_change'] : '0'),
        data[95]['logo_url']
      ];
      var x97 = data[96] as LinkedHashMap;

      c97 = [
        data[96]['id'],
        data[96]['price'],
        data[96]['rank'],
        (x97.containsKey('1d') ? data[96]['1d']['price_change'] : '0'),
        (x97.containsKey('30d') ? data[96]['30d']['price_change'] : '0'),
        data[96]['logo_url']
      ];
      var x98 = data[97] as LinkedHashMap;

      c98 = [
        data[97]['id'],
        data[97]['price'],
        data[97]['rank'],
        (x98.containsKey('1d') ? data[97]['1d']['price_change'] : '0'),
        (x98.containsKey('30d') ? data[97]['30d']['price_change'] : '0'),
        data[97]['logo_url']
      ];
      var x99 = data[98] as LinkedHashMap;

      c99 = [
        data[98]['id'],
        data[98]['price'],
        data[98]['rank'],
        (x.containsKey('1d') ? data[98]['1d']['price_change'] : '0'),
        (x.containsKey('30d') ? data[98]['30d']['price_change'] : '0'),
        data[98]['logo_url']
      ];
      var x100 = data[99] as LinkedHashMap;

      c100 = [
        data[99]['id'],
        data[99]['price'],
        data[99]['rank'],
        (x100.containsKey('1d') ? data[99]['1d']['price_change'] : '0'),
        (x100.containsKey('30d') ? data[99]['30d']['price_change'] : '0'),
        data[99]['logo_url']
      ];
    });
  }

  Widget currency(
      var shortName, var price, var rank, var c1d, var c30d, var url) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        margin: EdgeInsets.fromLTRB(12, 7, 12, 4),
        color: Colors.white70,
        shadowColor: Colors.blueGrey,
        child: ListTile(
          leading: (url.endsWith('svg'))
              ? SvgPicture.network(
                  url,
                  height: 40,
                )
              : Image.network(url, height: 40),
          title: Text(nameOfCoin(shortName) + ' - ' + shortName,
              style: TextStyle(fontFamily: 'num')),
          subtitle: Column(
            children: [
              Text('Rank: $rank', style: TextStyle(fontFamily: 'num')),
              Text('Yesterdays changes:', style: TextStyle(fontFamily: 'num')),
              (double.parse(c1d) >= 0)
                  ? Text(
                      (c1d == '0')
                          ? 'not announced'
                          : oCcy.format(int.parse(c1d)) + ' lira',
                      style: TextStyle(color: Colors.green, fontFamily: 'num'),
                    )
                  : Text(
                      '${oCcy.format(int.parse(c1d).abs())}-' + ' lira',
                      style: TextStyle(color: Colors.red, fontFamily: 'num'),
                    ),
              Text('Last month changes:', style: TextStyle(fontFamily: 'num')),
              (double.parse(c30d) >= 0)
                  ? Text(
                      (c30d == '0')
                          ? 'not announced'
                          : oCcy.format(int.parse(c30d)) + ' lira',
                      style: TextStyle(color: Colors.green, fontFamily: 'num'),
                    )
                  : Text(
                      '${oCcy.format(int.parse(c30d).abs())}-' + ' lira',
                      style: TextStyle(color: Colors.red, fontFamily: 'num'),
                    ),
            ],
          ),
          trailing: Text(
            oCcy.format(int.parse(price)) + '\n lira',
            style: TextStyle(fontFamily: 'num', fontSize: 17),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {

    String Euro = widget.euro.split(',').join();
    int eur = int.parse(Euro);
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
              currency(
                  c1[0],
                  (eur * double.parse(c1[1])).toStringAsFixed(0),
                  c1[2],
                  (double.parse(c1[3]) * eur).toStringAsFixed(0),
                  (double.parse(c1[4]) * eur).toStringAsFixed(0),
                  c1[5]),
              currency(
                  c2[0],
                  (eur * double.parse(c2[1])).toStringAsFixed(0),
                  c2[2],
                  (double.parse(c2[3]) * eur).toStringAsFixed(0),
                  (double.parse(c2[4]) * eur).toStringAsFixed(0),
                  c2[5]),
              currency(
                  c3[0],
                  (eur * double.parse(c3[1])).toStringAsFixed(0),
                  c3[2],
                  (double.parse(c3[3]) * eur).toStringAsFixed(0),
                  (double.parse(c3[4]) * eur).toStringAsFixed(0),
                  c3[5]),
              currency(
                  c4[0],
                  (eur * double.parse(c4[1])).toStringAsFixed(0),
                  c4[2],
                  (double.parse(c4[3]) * eur).toStringAsFixed(0),
                  (double.parse(c4[4]) * eur).toStringAsFixed(0),
                  c4[5]),
              currency(
                  c5[0],
                  (eur * double.parse(c5[1])).toStringAsFixed(0),
                  c5[2],
                  (double.parse(c5[3]) * eur).toStringAsFixed(0),
                  (double.parse(c5[4]) * eur).toStringAsFixed(0),
                  c5[5]),
              currency(
                  c6[0],
                  (eur * double.parse(c6[1])).toStringAsFixed(0),
                  c6[2],
                  (double.parse(c6[3]) * eur).toStringAsFixed(0),
                  (double.parse(c6[4]) * eur).toStringAsFixed(0),
                  c6[5]),
              currency(
                  c7[0],
                  (eur * double.parse(c7[1])).toStringAsFixed(0),
                  c7[2],
                  (double.parse(c7[3]) * eur).toStringAsFixed(0),
                  (double.parse(c7[4]) * eur).toStringAsFixed(0),
                  c7[5]),
              currency(
                  c8[0],
                  (eur * double.parse(c8[1])).toStringAsFixed(0),
                  c8[2],
                  (double.parse(c8[3]) * eur).toStringAsFixed(0),
                  (double.parse(c8[4]) * eur).toStringAsFixed(0),
                  c8[5]),
              currency(
                  c9[0],
                  (eur * double.parse(c9[1])).toStringAsFixed(0),
                  c9[2],
                  (double.parse(c9[3]) * eur).toStringAsFixed(0),
                  (double.parse(c9[4]) * eur).toStringAsFixed(0),
                  c9[5]),
              currency(
                  c10[0],
                  (eur * double.parse(c10[1])).toStringAsFixed(0),
                  c10[2],
                  (double.parse(c10[3]) * eur).toStringAsFixed(0),
                  (double.parse(c10[4]) * eur).toStringAsFixed(0),
                  c10[5]),
              currency(
                  c12[0],
                  (eur * double.parse(c12[1])).toStringAsFixed(0),
                  c12[2],
                  (double.parse(c12[3]) * eur).toStringAsFixed(0),
                  (double.parse(c12[4]) * eur).toStringAsFixed(0),
                  c12[5]),
              currency(
                  c13[0],
                  (eur * double.parse(c13[1])).toStringAsFixed(0),
                  c13[2],
                  (double.parse(c13[3]) * eur).toStringAsFixed(0),
                  (double.parse(c13[4]) * eur).toStringAsFixed(0),
                  c13[5]),
              currency(
                  c14[0],
                  (eur * double.parse(c14[1])).toStringAsFixed(0),
                  c14[2],
                  (double.parse(c14[3]) * eur).toStringAsFixed(0),
                  (double.parse(c14[4]) * eur).toStringAsFixed(0),
                  c14[5]),
              currency(
                  c15[0],
                  (eur * double.parse(c15[1])).toStringAsFixed(0),
                  c15[2],
                  (double.parse(c15[3]) * eur).toStringAsFixed(0),
                  (double.parse(c15[4]) * eur).toStringAsFixed(0),
                  c15[5]),
              currency(
                  c16[0],
                  (eur * double.parse(c16[1])).toStringAsFixed(0),
                  c16[2],
                  (double.parse(c16[3]) * eur).toStringAsFixed(0),
                  (double.parse(c16[4]) * eur).toStringAsFixed(0),
                  c16[5])
            ],
          ),
        )),
      ),
    );
  }
}
