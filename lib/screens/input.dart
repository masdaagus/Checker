import 'package:flutter/material.dart';

class buildInput extends StatelessWidget {
  const buildInput({
    Key key,
  }) : super(key: key);

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
                "DATA CCR",
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
                          hintText: "Feed", hintStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: TextField(
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
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: "Weight",
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
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
                "TIMER",
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
