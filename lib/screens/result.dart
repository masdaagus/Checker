import 'package:Checker/program/program_result.dart';
import 'package:Checker/screens/input.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class buildResult extends StatefulWidget {
  const buildResult({
    Key key,
  }) : super(key: key);

  @override
  _buildResultState createState() => _buildResultState();
}

final feed = TextEditingController();
final percent = TextEditingController();
final weight = TextEditingController();
final timer1 = TextEditingController();
final timer2 = TextEditingController();
final timer3 = TextEditingController();

double _setPoint = 0;
double _avarage = 0;
double _aktualWf = 0;
double _error = 0;
String _plus;

final formater = NumberFormat("##.##");

class _buildResultState extends State<buildResult> {
  String plus() {
    if (_error > 0) {
      _plus = "Plus";
    } else {
      _plus = "Minus";
    }
  }

  double setPoint() {
    setState(() {
      double mas1 = double.tryParse(feed.text);
      double mas2 = double.tryParse(percent.text);

      return _setPoint = mas1 * mas2 / 100;

      print(_setPoint);
    });
  }

  double avarage() {
    setState(() {
      double t1 = double.tryParse(timer1.text);
      double t2 = double.tryParse(timer2.text);
      double t3 = double.tryParse(timer3.text);
      return _avarage = (t1 + t2 + t3) / 3;
    });
  }

  double aktualWf() {
    setState(() {
      double berat = double.tryParse(weight.text);
      return _aktualWf = (1 / _avarage) * 3600 * berat / 1000;
    });
  }

  double error() {
    setState(() {
      plus();
      _error = (_aktualWf - _setPoint) / _setPoint * 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 260,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFB0BEC5),
                  Color(0xFF78909C),
                  Color(0xFF546E7A),
                  Color(0xFF455A64),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
              borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Line 1",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "${now.day}" + "-" + "${now.month}" + "-" + "${now.year}",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Clinker",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "Feedeng: " + feed.text + "t/h",
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Percentage: " + percent.text + " %",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "SetPoint: " + formater.format(_setPoint),
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 19),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "Timer: " + formater.format(_avarage),
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueGrey[200]),
                          child: Center(
                              child: Text(
                            formater.format(_error) + "%",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          "Weight :" + weight.text,
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Text(
                  "ERROR",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                SizedBox(height: 16),
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Actual Weighfeeder",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                      SizedBox(height: 3),
                      Text(
                        formater.format(_aktualWf),
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          // margin: EdgeInsets.only(top: 288), // default is 260
          height: 30,
          decoration: BoxDecoration(
              color: Colors.blueGrey[800],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        SizedBox(height: 5),
        // ini dari input result
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 230,
              width: 160,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFB0BEC5),
                      Color(0xFF78909C),
                      Color(0xFF546E7A),
                      Color(0xFF455A64),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Text(
                    "Data CCR",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 18),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40, left: 40),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              setPoint();
                              avarage();
                              aktualWf();
                              error();
                              plus();
                            });
                          },
                          controller: feed,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Feed",
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40, left: 40),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              setPoint();
                              avarage();
                              aktualWf();
                              error();
                              plus();
                            });
                          },
                          controller: percent,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Percent",
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40, left: 40),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              setPoint();
                              avarage();
                              aktualWf();
                              error();
                              plus();
                            });
                          },
                          controller: weight,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Weight",
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      ),
                      Text("")
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 230,
              width: 160,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFB0BEC5),
                      Color(0xFF78909C),
                      Color(0xFF546E7A),
                      Color(0xFF455A64),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                  // color: Colors.red[50],
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  Text(
                    "Timer",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 18),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40, left: 40),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              setPoint();
                              avarage();
                              aktualWf();
                              error();
                              plus();
                            });
                          },
                          controller: timer1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Time-1",
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40, left: 40),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              setPoint();
                              avarage();
                              aktualWf();
                              error();
                              plus();
                            });
                          },
                          controller: timer2,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Time-2",
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40, left: 40),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              setPoint();
                              avarage();
                              aktualWf();
                              error();
                              plus();
                            });
                          },
                          controller: timer3,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: "Time-3",
                              hintStyle: TextStyle(fontSize: 13)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
