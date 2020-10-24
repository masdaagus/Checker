import 'dart:async';
import 'package:flutter/material.dart';

class buildStopwatch extends StatefulWidget {
  @override
  _buildStopwatchState createState() => _buildStopwatchState();
}

class _buildStopwatchState extends State<buildStopwatch> {
  bool startpressed = true;
  bool stoppressed = true;
  bool resetpressed = true;
  String stoptimetodisplay = "00:00:00";
  var swatch = Stopwatch();
  final dur = const Duration(milliseconds: 1);

  void starttimer() {
    Timer(dur, keeprunning);
  }

  void keeprunning() {
    if (swatch.isRunning) {
      starttimer();
    }
    setState(() {
      stoptimetodisplay = swatch.elapsed.inMinutes.toString().padLeft(2, "0") +
          ":" +
          (swatch.elapsed.inSeconds % 60).toString().padLeft(2, "0") +
          ":" +
          (swatch.elapsed.inMilliseconds % 60).toString().padLeft(2, "0");
    });
    resetpressed = false;
  }

  void startstopwatch() {
    setState(() {
      stoppressed = false;
      startpressed = false;
      resetpressed = false;
    });
    swatch.start();
    starttimer();
  }

  void stopstopwatch() {
    setState(() {
      stoppressed = true;
      resetpressed = false;
      startpressed = true;
    });
    swatch.stop();
  }

  void resetstopwatch() {
    setState(() {
      startpressed = true;
      stoptimetodisplay = "00:00:00";
    });
    swatch.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
                child: Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              child: Text(
                stoptimetodisplay,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
              ),
            ))
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: resetpressed ? null : resetstopwatch,
              color: Colors.blue[200],
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.blueGrey[600], fontSize: 15),
              ),
            ),
            RaisedButton(
              onPressed: stoppressed ? null : stopstopwatch,
              color: Colors.blue[200],
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: Text(
                "Stop",
                style: TextStyle(color: Colors.blueGrey[600], fontSize: 15),
              ),
            ),
            RaisedButton(
              onPressed: startpressed ? startstopwatch : null,
              color: Colors.blue[200],
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: Text(
                "Start",
                style: TextStyle(color: Colors.blueGrey[600], fontSize: 15),
              ),
            )
          ],
        )
      ],
    );
  }
}
