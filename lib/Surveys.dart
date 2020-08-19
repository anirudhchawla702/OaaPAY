import 'package:flutter/material.dart';

import './Survey_card_1.dart';
import './Survey_card_2.dart';

class Surveys extends StatefulWidget {
  @override
  _SurveysState createState() => _SurveysState();
}

class _SurveysState extends State<Surveys> {
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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          backgroundColor: Colors.purple[800],
          title: new Text("My Profile"),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Image.asset(
                'assets/images/dummyprofilepic.jpg',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.notifications,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text(
                  "Oaaa Surveys",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Card(
                elevation: 5,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.0),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 200,
                    child: Row(
                      children: <Widget>[
                        SurveyCard1(),
                        SurveyCard1(),
                        SurveyCard1(),
                        SurveyCard1(),
                        SurveyCard1(),
                        SurveyCard1(),
                        SurveyCard1(),
                        SurveyCard1(),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "3rd Party Surveys",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 12,
                  top: 8,
                ),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: new Container(
                        width: 96.0,
                        height: 35.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            color: Colors.purple,
                            width: 1.5,
                          ),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Best Match',
                            style: new TextStyle(
                              fontSize: 15.0,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: new Container(
                        width: 96.0,
                        height: 35.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            color: Colors.lightBlueAccent,
                            width: 1.5,
                          ),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Points',
                            style: new TextStyle(
                              fontSize: 15.0,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {},
                      child: new Container(
                        width: 140.0,
                        height: 35.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(
                            color: Colors.lightBlueAccent,
                            width: 1.5,
                          ),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text(
                            'Length of survey',
                            style: new TextStyle(
                              fontSize: 15.0,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          'All',
                          style: new TextStyle(
                            fontSize: 25.0,
                            color: Colors.cyanAccent[400],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      InkWell(
                        onTap: () {},
                        child: new Container(
                          width: 120.0,
                          height: 35.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                              color: Colors.purple,
                              width: 1.5,
                            ),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: new Center(
                            child: new Text(
                              'WANNADS',
                              style: new TextStyle(
                                fontSize: 16.0,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: new Container(
                          width: 140.0,
                          height: 35.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                              color: Colors.lightBlueAccent,
                              width: 1.5,
                            ),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: new Center(
                            child: new Text(
                              'Length of survey',
                              style: new TextStyle(
                                fontSize: 15.0,
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: new Container(
                          width: 140.0,
                          height: 35.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                              color: Colors.lightBlueAccent,
                              width: 1.5,
                            ),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: new Center(
                            child: new Text(
                              'Length of survey',
                              style: new TextStyle(
                                fontSize: 15.0,
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      InkWell(
                        onTap: () {},
                        child: new Container(
                          width: 140.0,
                          height: 35.0,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(
                              color: Colors.lightBlueAccent,
                              width: 1.5,
                            ),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: new Center(
                            child: new Text(
                              'Length of survey',
                              style: new TextStyle(
                                fontSize: 15.0,
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  SurveyCard2(),
                  SurveyCard2(),
                ],
              ),
              Row(
                children: <Widget>[
                  SurveyCard2(),
                  SurveyCard2(),
                ],
              ),
              Row(
                children: <Widget>[
                  SurveyCard2(),
                  SurveyCard2(),
                ],
              ),
              Row(
                children: <Widget>[
                  SurveyCard2(),
                  SurveyCard2(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
