import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SurveyCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color background = Colors.white;
    final Color fill = Colors.lightBlue[200];
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    final double fillPercent = 20; // fills 56.23% for container from bottom
    final double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 0.1];

    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 36.0,
            top: 18,
          ),
          child: Card(
            elevation: 18,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Container(
              height: 208,
              width: 160,
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "10 points",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      Stack(
                        children: <Widget>[
                          Center(
                            child: Container(
                              width: 55.0,
                              height: 55.0,
                              decoration: new BoxDecoration(
                                border: Border.all(
                                  width: 6.0,
                                  color: Colors.orange[300],
                                ),
                                color: Colors.orange[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 47.0,
                              height: 47.0,
                              decoration: new BoxDecoration(
                                border: Border.all(
                                  width: 6.0,
                                  color: Colors.white,
                                ),
                                color: Colors.orange[300],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "72.5",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                        ),
                      ),
                      Text(
                        "coins",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                      Text(
                        "Survey Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      RatingBarIndicator(
                        rating: 2.75,
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.purple,
                        ),
                        itemCount: 5,
                        itemSize: 23.0,
                        direction: Axis.horizontal,
                      ),
                      Text(
                        "rating",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
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
      ],
    );
  }
}
