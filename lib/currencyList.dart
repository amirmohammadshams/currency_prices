import 'dart:math';
import 'package:persian_date/persian_date.dart';
import 'package:intl/intl.dart' as inn;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CurrencyList extends StatefulWidget {
  CurrencyList(this.data,this.euro,this.ran);
  final data;
  final euro;
var ran;

  @override

  _CurrencyListState createState() => _CurrencyListState();
}

class _CurrencyListState extends State<CurrencyList> {
  final oCcy = new inn.NumberFormat("#,##0", "en_US");
  var usd;
  var aed;
  var afn;
  var all;
  var amd;
  var ang;
  var aoa;
  var ars;
  var aud;
  var awg;
  var azn;
  var bam;
  var bbd;
  var bdt;
  var bgn;
  var bhd;
  var bif;
  var bmd;
  var bnd;
  var bob;
  var brl;
  var bsd;
  var btn;
  var bwp;
  var byn;
  var bzd;
  var cad;
  var cdf;
  var chf;
  var clp;
  var cny;
  var cop;
  var crc;
  var cup;
  var cve;
  var czk;
  var djf;
  var dkk;
  var dop;
  var egp;
  var ern;
  var etb;
  var fjd;
  var fkp;
  var gbp;
  var gel;
  var ggp;
  var ghs;
  var gip;
  var gmd;
  var gnf;
  var gtq;
  var gyd;
  var hkd;
  var hnl;
  var hrk;
  var htg;
  var huf;
  var idr;
  var ils;
  var imp;
  var inr;
  var iqd;
  var isk;
  var jep;
  var jmd;
  var jod;
  var jpy;
  var kes;
  var kgs;
  var khr;
  var kmf;
  var kpw;
  var krw;
  var kwd;
  var kyd;
  var kzt;
  var lak;
  var lbp;
  var lkr;
  var lrd;
  var lsl;
  var lyd;
  var mad;
  var mdl;
  var mga;
  var mkd;
  var mmk;
  var mnt;
  var mop;
  var mro;
  var mru;
  var mur;
  var mvr;
  var mwk;
  var mxn;
  var myr;
  var mzn;
  var nad;
  var ngn;
  var nio;
  var nok;
  var npr;
  var nzd;

  var omr;
  var pab;
  var pen;
  var pgk;
  var php;
  var pkr;
  var pln;
  var pyg;
  var qar;
  var ron;
  var rsd;
  var rub;
  var rwf;
  var sar;
  var sbd;
  var scr;
  var sdg;
  var sek;
  var sgd;
  var shp;
  var sll;
  var sos;
  var srd;
  var ssp;
  var std;
  var stn;
  var svc;
  var syp;
  var szl;
  var thb;
  var tjs;
  var tnd;
  var top;
  var trY;
  var ttd;
  var twd;
  var tzs;
  var uah;
  var ugx;
  var uyu;
  var uzs;
  var ves;
  var vnd;
  var vuv;
  var wst;
  var xaf;
  var xcd;
  var xof;
  var xpf;
  var yer;
  var zar;
  var zmw;
  var zwl;

  @override
  void initState() {
    super.initState();
    UpdateScreen(widget.data);
  }
  void UpdateScreen(dynamic data) {
    setState(() {

      usd = data['rates']['USD'];
      aed = data['rates']['AED'];
      afn = data['rates']['AFN'];
      all = data['rates']['ALL'];
      amd = data['rates']['AMD'];
      ang = data['rates']['ANG'];
      aoa = data['rates']['AOA'];
      ars = data['rates']['ARS'];
      aud = data['rates']['AUD'];
      awg = data['rates']['AWG'];
      azn = data['rates']['AZN'];
      bam = data['rates']['BAM'];
      bbd = data['rates']['BBD'];
      bdt = data['rates']['BDT'];
      bgn = data['rates']['BGN'];
      bhd = data['rates']['BHD'];
      bif = data['rates']['BIF'];
      bmd = data['rates']['BMD'];
      bnd = data['rates']['BND'];
      bob = data['rates']['BOB'];
      brl = data['rates']['BRL'];
      bsd = data['rates']['BSD'];
      btn = data['rates']['BTN'];
      bwp = data['rates']['BWP'];
      byn = data['rates']['BYN'];
      bzd = data['rates']['BZD'];
      cad = data['rates']['CAD'];
      cdf = data['rates']['CDF'];
      chf = data['rates']['CHF'];
      clp = data['rates']['CLP'];
      cny = data['rates']['CNY'];
      cop = data['rates']['COP'];
      crc = data['rates']['CRC'];
      cup = data['rates']['CUP'];
      cve = data['rates']['CVE'];
      czk = data['rates']['CZK'];
      djf = data['rates']['DJF'];
      dkk = data['rates']['DKK'];
      dop = data['rates']['DOP'];
      egp = data['rates']['EGP'];
      ern = data['rates']['ERN'];
      etb = data['rates']['ETB'];
      fjd = data['rates']['FJD'];
       gbp = data['rates']['GBP'];
       gel = data['rates']['GEL'];
       ggp = data['rates']['GGP'];
       ghs = data['rates']['GHS'];
       gip = data['rates']['GIP'];
       gmd = data['rates']['GMD'];
       gnf = data['rates']['GNF'];
       gtq = data['rates']['GTQ'];
       gyd = data['rates']['GYD'];
       hkd = data['rates']['HKD'];
       hnl = data['rates']['HNL'];
       hrk = data['rates']['HRK'];
       htg = data['rates']['HTG'];
       huf = data['rates']['HUT'];
       idr = data['rates']['IDR'];
       imp = data['rates']['IMP'];
       inr = data['rates']['INR'];
       iqd = data['rates']['IQD'];
       isk = data['rates']['ISK'];
      jep = data['rates']['JEP'];
      jmd = data['rates']['JMD'];
      jod = data['rates']['JOD'];
      jpy = data['rates']['JPY'];
      kes = data['rates']['KES'];
      kgs = data['rates']['KGS'];
      khr = data['rates']['KHR'];
      kmf = data['rates']['KMF'];
      kpw = data['rates']['KPW'];
      krw = data['rates']['KRW'];
      kwd = data['rates']['KWD'];
      kyd = data['rates']['KYD'];
      kzt = data['rates']['KZT'];
      lak = data['rates']['LAK'];
      lbp = data['rates']['LBP'];
      lkr = data['rates']['LKR'];
      lrd = data['rates']['LRD'];
      lsl = data['rates']['LSL'];
      lyd = data['rates']['LYD'];
      mad = data['rates']['MAD'];
      mdl = data['rates']['MDL'];
      mga = data['rates']['MGA'];
      mkd = data['rates']['MKD'];
      mmk = data['rates']['MMK'];
      nzd = data['rates']['NZD'];
      mnt = data['rates']['MNT'];
      mop = data['rates']['MOP'];
      mru = data['rates']['MRU'];
      mur = data['rates']['MUR'];
      mvr = data['rates']['MVR'];
      mwk = data['rates']['MWK'];
      mxn = data['rates']['MXN'];
      myr = data['rates']['MYR'];
      mzn = data['rates']['MZN'];
      nad = data['rates']['NAD'];
      ngn = data['rates']['NGN'];
      nio = data['rates']['NIO'];
      nok = data['rates']['NOK'];
      npr = data['rates']['NPR'];
      omr = data['rates']['OMR'];
      pab = data['rates']['PAB'];
      pen = data['rates']['PEN'];
      pgk = data['rates']['PGK'];
      php = data['rates']['PHP'];
      pkr = data['rates']['PKR'];
      pln = data['rates']['PLN'];
      pyg = data['rates']['PYG'];
      qar = data['rates']['QAR'];
      ron = data['rates']['RON'];
      rsd = data['rates']['RSD'];
      rub = data['rates']['RUB'];
      rwf = data['rates']['RWF'];
      sar = data['rates']['SAR'];
      sbd = data['rates']['SBD'];
      scr = data['rates']['SCR'];
      sdg = data['rates']['SDG'];
      sek = data['rates']['SEK'];
      sgd = data['rates']['SGD'];
      shp = data['rates']['SHP'];
      sll = data['rates']['SLL'];
      sos = data['rates']['SOS'];
      srd = data['rates']['SRD'];
      ssp = data['rates']['SSP'];
      stn = data['rates']['STN'];
      svc = data['rates']['SVC'];
      syp = data['rates']['SYP'];
      szl = data['rates']['SZL'];
      thb = data['rates']['THB'];
      tjs = data['rates']['TJS'];
      tnd = data['rates']['TND'];
      top = data['rates']['TOP'];
      trY = data['rates']['TRY'];
      ttd = data['rates']['TTD'];
      twd = data['rates']['TWD'];
      tzs = data['rates']['TZS'];
      uah = data['rates']['UAH'];
      ugx = data['rates']['UGX'];
      uyu = data['rates']['UYU'];
      uzs = data['rates']['UZS'];
      ves = data['rates']['VES'];
      vnd = data['rates']['VND'];
      vuv = data['rates']['VUV'];
      wst = data['rates']['WST'];
      xaf = data['rates']['XAF'];
      xcd = data['rates']['XCD'];
      xof = data['rates']['XOF'];
      xpf = data['rates']['XPF'];
      yer = data['rates']['YER'];
      zar = data['rates']['ZAR'];
      zmw = data['rates']['ZMW'];
      zwl = data['rates']['ZWL'];



    });
  }
  Widget currency(var name, var shortName , var price){
   return Card(
     margin: EdgeInsets.fromLTRB(12, 7, 12, 4),
     color: Colors.white70,
     //shadowColor: Colors.blueAccent,
     child: ListTile(
        leading: Image(image: AssetImage('images/Flags/$shortName.png'),),
        title: Text(name , style: TextStyle(fontFamily: 'num'),),
        trailing: Text(oCcy.format(int.parse(price)) + ' lira', style: TextStyle(fontFamily: 'num',fontSize: 17),),

      ),
    );

  }
  Widget currency1(var name, var shortName , var price){
    return Card(
      margin: EdgeInsets.fromLTRB(12, 7, 12, 4),
      color: Colors.white70,
      shadowColor: Colors.yellowAccent,
      child: ListTile(
        leading: Image(image: AssetImage('images/Flags/$shortName.png'),),
        title: Text(name , style: TextStyle(fontFamily: 'num'),),
        trailing: Text(oCcy.format(int.parse(price)) + ' lira', style: TextStyle(fontFamily: 'num',fontSize: 17),),

      ),
    );

  }
  Widget currency2(var name, var shortName , var price){
    return Card(
      margin: EdgeInsets.fromLTRB(12, 7, 12, 4),
      color: Colors.white70,
      shadowColor: Colors.greenAccent,
      child: ListTile(
        leading: Image(image: AssetImage('images/Flags/$shortName.png'),),
        title: Text(name , style: TextStyle(fontFamily: 'num'),),
        trailing: Text(oCcy.format(int.parse(price)) + ' lira', style: TextStyle(fontFamily: 'num',fontSize: 17),),

      ),
    );
  }

  Widget build(BuildContext context) {
    PersianDate persianDate = PersianDate();
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
                currency1 ('US Dollar', 'usd', (eur / usd) .toStringAsFixed (0)),
                currency1 ('Euro', 'eur', Euro),
                currency2 ('British Pound', 'gbp', (eur / gbp) .toStringAsFixed (0)),
                currency2 ('UAE Dirham', 'aed', (eur / aed) .toStringAsFixed (0)),
                currency2 ('Japanese Yen', 'jpy', (eur / jpy) .toStringAsFixed (0)),
                currency2 ('Turkish Lira', 'try', (eur / trY) .toStringAsFixed (0)),
                currency2 ('Australian Dollar', 'aud', (eur / aud) .toStringAsFixed (0)),
                currency2 ('Chinese Yuan', 'cny', (eur / cny) .toStringAsFixed (0)),
                currency2 ('Canadian dollar', 'cad', (eur / cad) .toStringAsFixed (0)),
                currency2 ('Swiss francs', 'chf', (eur / chf) .toStringAsFixed (0)),
                currency2 ('Swedish Krona', 'sek', (eur / chf) .toStringAsFixed (0)),
                currency2 ('New Zealand Dollar', 'nzd', (eur / nzd) .toStringAsFixed (0)),
                currency ('Russian Ruble', 'rub', (eur / rub) .toStringAsFixed (0)),

                currency ('Afghan Afghani', 'afn', (eur / afn) .toStringAsFixed (0)),
                currency ('Manat of the Republic of Azerbaijan', 'azn', (eur / azn) .toStringAsFixed (0)),
                currency ('Kuwaiti Dinar', 'kwd', (eur / kwd) .toStringAsFixed (0)),
                currency ('qar', 'qar', (eur / qar) .toStringAsFixed (0)),

                currency ('Armenian Dram', 'amd', (eur / amd) .toStringAsFixed (0)),
                currency ('omr', 'omr', (eur / omr) .toStringAsFixed (0)),
                currency ('Saudi Riyal', 'sar', (eur / sar) .toStringAsFixed (0)),
                currency ('Iraqi Dinar', 'iqd', (eur / iqd) .toStringAsFixed (0)),
                currency ('Georgia Lari', 'gel', (eur / gel) .toStringAsFixed (0)),
                currency ('Bahraini Dinar', 'bhd', (eur / bhd) .toStringAsFixed (0)),
                currency ('Syrian Pound', 'syp', (eur / syp) .toStringAsFixed (0)),
                currency ('Indian Rupee', 'inr', (eur / inr) .toStringAsFixed (0)),
                currency ('Norwegian Krone', 'nok', (eur / nok) .toStringAsFixed (0)),
                currency ('Danish krone', 'dkk', (eur / dkk) .toStringAsFixed (0)),
                currency ('Pakistan Rupee', 'pkr', (eur / pkr) .toStringAsFixed (0)),
                currency ('Singapore Dollar', 'sgd', (eur / sgd) .toStringAsFixed (0)),
                currency ('Malaysian Ringgit', 'myr', (eur / myr) .toStringAsFixed (0)),
                currency ('Bot Thailand', 'thb', (eur / thb) .toStringAsFixed (0)),
                currency ('Hong Kong Dollar', 'hkd', (eur / hkd) .toStringAsFixed (0)),
                currency ('Argentine Peso', 'ars', (eur / ars) .toStringAsFixed (0)),
                currency ('Egyptian Pound', 'egp', (eur / egp) .toStringAsFixed (0)),
                currency ('bdt', 'bdt', (eur / bdt) .toStringAsFixed (0)),
                currency ('bgn', 'bgn', (eur / bgn) .toStringAsFixed (0)),
                currency ('all', 'all', (eur / all) .toStringAsFixed (0)),
                currency ('Indonesian Rupiah', 'idr', (eur / idr) .toStringAsFixed (0)),
                currency ('Icelandic krونna', 'isk', (eur / isk) .toStringAsFixed (0)),
                currency ('Jordanian Dinar', 'jod', (eur / jod) .toStringAsFixed (0)),
                currency ('Netherlands Antilles Guilder', 'ang', (eur / ang) .toStringAsFixed (0)),
                currency ('Kazakhstan Strait', 'kzt', (eur / kzt) .toStringAsFixed (0)),
                currency ('South Korean Won', 'krw', (eur / krw) .toStringAsFixed (0)),
                currency ('pln', 'pln', (eur / pln) .toStringAsFixed (0)),
                currency ('Philippine Peso', 'php', (eur / php) .toStringAsFixed (0)),
                currency ('Kyrgyzstan Third', 'kgs', (eur / kgs) .toStringAsFixed (0)),
                currency ('Libyan Dinar', 'lyd', (eur / lyd) .toStringAsFixed (0)),
                currency ('Bosnian convertible mark', 'bam', (eur / bam) .toStringAsFixed (0)),
                currency ('Barbados Dollar', 'bbd', (eur / bbd) .toStringAsFixed (0)),
                currency ('Chilean Peso', 'clp', (eur / clp) .toStringAsFixed (0)),
                currency ('Mexican Peso', 'mxn', (eur / mxn) .toStringAsFixed (0)),
                currency ('Ukrainian Heron', 'uah', (eur / uah) .toStringAsFixed (0)),
                currency ('Vietnam Dong', 'vnd', (eur / vnd) .toStringAsFixed (0)),

                currency ('Lebanese Pound', 'lbp', (eur / lbp) .toStringAsFixed (0)),
                currency ('Tajikistan Samani', 'tjs', (eur / tjs) .toStringAsFixed (0)),
                currency ('Third Uzbekistan', 'uzs', (eur / uzs) .toStringAsFixed (0)),
                currency ('Frank Burundi', 'bif', (eur / bif) .toStringAsFixed (0)),
                currency ('Bermuda Dollar', 'bmd', (eur / bmd) .toStringAsFixed (0)),
                currency ('Brunei Dollar', 'bnd', (eur / bnd) .toStringAsFixed (0)),
                currency ('Bolivian Bolivian', 'bob', (eur / bob) .toStringAsFixed (0)),
                currency ('Brazilian Real', 'brl', (eur / brl) .toStringAsFixed (0)),
                currency ('Bahamas', 'bsd', (eur / bsd) .toStringAsFixed (0)),
                currency ('Angoltrum Butane', 'btn', (eur / btn) .toStringAsFixed (0)),
                currency ('Botswana money', 'bwp', (eur / bwp) .toStringAsFixed (0)),
                currency ('Belarusian Ruble', 'byn', (eur / byn) .toStringAsFixed (0)),
                currency ('Yemeni Rial', 'yer', (eur / yer) .toStringAsFixed (0)),
                currency ('Dollar Belize', 'bzd', (eur / bzd) .toStringAsFixed (0)),
                currency ('Congo Franc', 'cdf', (eur / cdf) .toStringAsFixed (0)),
                currency ('Colombian peso', 'cop', (eur / cop) .toStringAsFixed (0)),
                currency ('Costa Rican Colon', 'crc', (eur / crc) .toStringAsFixed (0)),
                currency ('Cuban peso', 'cup', (eur / cup) .toStringAsFixed (0)),
                currency ('Escudo Keyboard', 'cve', (eur / cve) .toStringAsFixed (0)),
                currency ('Czech Koruna', 'czk', (eur / czk) .toStringAsFixed (0)),
                currency ('Djibouti Franc', 'djf', (eur / djf) .toStringAsFixed (0)),
                currency ('Dominican Republic Peso', 'dop', (eur / dop) .toStringAsFixed (0)),
                currency ('Ethiopian Bir', 'etb', (eur / etb) .toStringAsFixed (0)),
                currency ('incomplete Eritrea', 'ern', (eur / ern) .toStringAsFixed (0)),
                currency ('Fiji Dollar', 'fjd', (eur / fjd) .toStringAsFixed (0)),
                currency ('Pound Guernsey', 'ggp', (eur / ggp) .toStringAsFixed (0)),
                currency ('ghs', 'ghs', (eur / ghs) .toStringAsFixed (0)),
                currency ('Gibraltar Pound', 'gip', (eur / gip) .toStringAsFixed (0)),
                currency ('Dallas Gambia', 'gmd', (eur / gmd) .toStringAsFixed (0)),
                currency ('Guinean Franc', 'gnf', (eur / gnf) .toStringAsFixed (0)),
                currency ('gtq', 'gtq', (eur / gtq) .toStringAsFixed (0)),
                currency ('Guyana Dollar', 'gyd', (eur / gyd) .toStringAsFixed (0)),
                currency ('Honduran Lampira', 'hnl', (eur / hnl) .toStringAsFixed (0)),
                currency ('Croatian Kuna', 'hrk', (eur / hrk) .toStringAsFixed (0)),
                currency ('htg', 'htg', (eur / htg) .toStringAsFixed (0)),
                currency ('imp', 'imp', (eur / imp) .toStringAsFixed (0)),
                currency ('Angolan Kwanzai', 'aoa', (eur / aoa) .toStringAsFixed (0)),
                currency ('Florin Aruba', 'awg', (eur / awg) .toStringAsFixed (0)),
                currency ('Jamaican Dollar', 'jmd', (eur / jmd) .toStringAsFixed (0)),
                currency ('pound jersey', 'jep', (eur / jep) .toStringAsFixed (0)),
                currency ('Cayman Islands dollar', 'kyd', (eur / kyd) .toStringAsFixed (0)),
                currency ('North Korean Won', 'kpw', (eur / kpw) .toStringAsFixed (0)),
                currency ('Frank Comoros', 'kmf', (eur / kmf) .toStringAsFixed (0)),
                currency ('Cambodian Ruble', 'khr', (eur / khr) .toStringAsFixed (0)),
                currency ('Tunisian Dinar', 'tnd', (eur / tnd) .toStringAsFixed (0)),

                currency ('lsl', 'lsl', (eur / lsl) .toStringAsFixed (0)),
                currency ('Liberian Dollar', 'lrd', (eur / lrd) .toStringAsFixed (0)),
                currency ('Sri Lankan Rupee', 'lkr', (eur / lkr) .toStringAsFixed (0)),
                currency ('lak', 'lak', (eur / lak) .toStringAsFixed (0)),
                currency ('Mozambique', 'mzn', (eur / mzn) .toStringAsFixed (0)),
                currency ('Malawi Kwacha', 'mwk', (eur / mwk) .toStringAsFixed (0)),
                currency ('Maldives rupee', 'mvr', (eur / mvr) .toStringAsFixed (0)),
                currency ('Mauritius rupee', 'mur', (eur / mur) .toStringAsFixed (0)),
                currency ('Mauritania iguo', 'mru', (eur / mru) .toStringAsFixed (0)),
                currency ('Pataka Macau', 'mop', (eur / mop) .toStringAsFixed (0)),
                currency ('Mongolia', 'mnt', (eur / mnt) .toStringAsFixed (0)),
                currency ('mmk','mmk',(eur / mmk) .toStringAsFixed (0)),
                currency ('Macedonian Dinar', 'mkd', (eur / mkd) .toStringAsFixed (0)),
                currency ('Malagasy Ariari', 'mga', (eur / mga) .toStringAsFixed (0)),
                currency ('Moldovan Leu', 'mdl', (eur / mdl) .toStringAsFixed (0)),
                currency ('Moroccan Dirham', 'mad', (eur / mad) .toStringAsFixed (0)),
                currency ('Nepalese Rupee', 'npr', (eur / npr) .toStringAsFixed (0)),
                currency ('Nicaraguan Cordoba', 'nio', (eur / nio) .toStringAsFixed (0)),
                currency ('Nigerian Niger', 'ngn', (eur / ngn) .toStringAsFixed (0)),
                currency ('Namibian Dollar', 'nad', (eur / nad) .toStringAsFixed (0)),
                currency ('Paraguay Guarani', 'pyg', (eur / pyg) .toStringAsFixed (0)),
                currency ('South African Rand', 'zar', (eur / zar) .toStringAsFixed (0)),

                currency ('Papua New Guinea Kina', 'pgk', (eur / pgk) .toStringAsFixed (0)),
                currency ('pen', 'pen', (eur / pen) .toStringAsFixed (0)),
                currency ('Panama Balboa', 'pab', (eur / pab) .toStringAsFixed (0)),
                currency ('Frank Rwanda', 'rwf', (eur / rwf) .toStringAsFixed (0)),
                currency ('Serbian Dinar', 'rsd', (eur / rsd) .toStringAsFixed (0)),
                currency ('Romanian levi', 'ron', (eur / ron) .toStringAsFixed (0)),
                currency ('Swaziland', 'szl', (eur / szl) .toStringAsFixed (0)),
                currency ('El Salvador Colon', 'svc', (eur / svc) .toStringAsFixed (0)),
                currency ('for Sao Tome and Principe', 'stn', (eur / stn) .toStringAsFixed (0)),
                currency ('South Sudanese Pound', 'ssp', (eur / ssp) .toStringAsFixed (0)),
                currency ('Suriname Dollar', 'srd', (eur / srd) .toStringAsFixed (0)),
                currency ('Somali Shilling', 'sos', (eur / sos) .toStringAsFixed (0)),
                currency ('sll', 'sll', (eur / sll) .toStringAsFixed (0)),
                currency ('shp', 'shp', (eur / shp) .toStringAsFixed (0)),
                currency ('Sudanese Pound', 'sdg', (eur / sdg) .toStringAsFixed (0)),
                currency ('Seychelles Rupee', 'scr', (eur / scr) .toStringAsFixed (0)),
                currency ('Solomon Islands Dollar', 'sbd', (eur / sbd) .toStringAsFixed (0)),
                currency ('Tanzanian Shilling', 'tzs', (eur / tzs) .toStringAsFixed (0)),
                currency ('Taiwan new dollar', 'twd', (eur / twd) .toStringAsFixed (0)),
                currency ('Trinidad and Tobago Dollar', 'ttd', (eur / ttd) .toStringAsFixed (0)),
                currency ('paonga tonga', 'top', (eur / top) .toStringAsFixed (0)),

                currency ('Uruguayan peso', 'uyu', (eur / uyu) .toStringAsFixed (0)),
                currency ('Uganda Shilling', 'ugx', (eur / ugx) .toStringAsFixed (0)),
                currency ('vuv', 'vuv', (eur / vuv) .toStringAsFixed (0)),
                currency ('Venezuelan Bolivar', 'ves', (eur / ves) .toStringAsFixed (0)),
                currency ('Samoa Gold', 'wst', (eur / wst) .toStringAsFixed (0)),
                currency ('Ocean Franc', 'xpf', (eur / xpf) .toStringAsFixed (0)),
                currency ('West African franc', 'xof', (eur / xof) .toStringAsFixed (0)),
                currency ('East Caribbean dollar', 'xcd', (eur / xcd) .toStringAsFixed (0)),
                currency ('Central African African franc', 'xaf', (eur / xaf) .toStringAsFixed (0)),
                currency ('Zimbabwean dollar', 'zwl', (eur / zwl) .toStringAsFixed (0)),
                currency ('Zambia Kwacha', 'zmw', (eur / zmw) .toStringAsFixed (0)),

              ],
            ),
          )
        ),
      ),
    );
  }
}
