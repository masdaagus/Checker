// import 'dart:wasm';

import 'package:Checker/program/program_result.dart';
import 'package:flutter/material.dart';

class buildInput extends StatefulWidget {
  const buildInput({
    Key key,
  }) : super(key: key);

  @override
  _buildInputState createState() => _buildInputState();
}

final feed = TextEditingController();
final percent = TextEditingController();
final weight = TextEditingController();

double _hasil = 0;
double get hasil => _hasil;

class _buildInputState extends State<buildInput> {
  void kan() {
    setState(() {
      double mas1 = double.tryParse(feed.text);
      double mas2 = double.tryParse(percent.text);

      return _hasil = mas1 * mas2 / 100;

      print(_hasil);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
              // color: Colors.red[50],
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
                          kan();
                        });
                      },
                      controller: feed,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "Feed", hintStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          kan();
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
                        setState(() {});
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
    );
  }
}
