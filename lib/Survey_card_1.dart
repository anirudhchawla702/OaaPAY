import 'package:flutter/material.dart';

class SurveyCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color background = Colors.white;
    final Color fill = Colors.purple;
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    final double fillPercent = 50; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 0.1];

    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 36.0,
            top: 18,
          ),
          child: Center(
            child: Card(
              elevation: 18,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Container(
                height: 170,
                width: 140,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Survey Name",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: new BoxDecoration(
                                border: Border.all(
                                  width: 6.0,
                                  color: Colors.yellowAccent,
                                ),
                                color: Colors.yellow,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 52.0,
                              height: 52.0,
                              decoration: new BoxDecoration(
                                border: Border.all(
                                  width: 6.0,
                                  color: Colors.white,
                                ),
                                color: Colors.yellow,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 12,
                            ),
                            child: Center(
                              child: Text(
                                r'$',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "300",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Points",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradient,
                    stops: stops,
                    end: Alignment.bottomCenter,
                    begin: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
