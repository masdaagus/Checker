import 'package:Checker/screens/result.dart';
import 'package:Checker/screens/stopwatch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'input.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF455A64),
                  Color(0xFF546E7A),
                  Color(0xFF78909C),
                  Color(0xFFB0BEC5),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                children: <Widget>[
                  _titleUp(),
                  buildResult(),
                  // _titleDown(),
                  // SizedBox(height: 5),
                  // buildInput(),
                  SizedBox(height: 10),
                  buildStopwatch(),
                  SizedBox(height: 30)
                  // Text(feed.text)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.blueGrey[800],
      elevation: 0,
      leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      title: Text(
        "CrossCheck",
        // style: TextStyle(color: Colors.black54),
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.history), onPressed: () {})
      ],
    );
  }
}

// ignore: camel_case_types
class _titleDown extends StatelessWidget {
  const _titleDown({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 288), // default is 260
      height: 30,
      decoration: BoxDecoration(
          color: Colors.blueGrey[800],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
    );
  }
}

// ignore: camel_case_types
class _titleUp extends StatelessWidget {
  const _titleUp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Text(
              "RESULT",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 3,
                  color: Colors.white70),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.blueGrey[800],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100))),
    );
  }
}
