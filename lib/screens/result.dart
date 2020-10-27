import 'package:Checker/program/program_result.dart';
import 'package:flutter/material.dart';

class buildResult extends StatefulWidget {
  const buildResult({
    Key key,
  }) : super(key: key);

  @override
  _buildResultState createState() => _buildResultState();
}

class _buildResultState extends State<buildResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${now.day}" + "-" + "${now.month}" + "-" + "${now.year}",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Clinker",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Feedeng: 32 t/h",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Percentage: 68%",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                ),
                Text(
                  "SetPoint: 23.12",
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Timer : 08.77",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blueGrey[200]),
                  child: Center(
                      child: Text(
                    "-10.23%",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )),
                ),
                Text(
                  "Weight : 54.23",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 2),
            Text(
              "ERROR",
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, letterSpacing: 2),
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
                children: [
                  Text(
                    "Actual Weighfeeder",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "20.12",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
