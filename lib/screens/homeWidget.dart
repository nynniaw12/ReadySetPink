import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Your stats for the week:',
              style: TextStyle(color: Colors.grey[100], fontSize: 16)),
          // Allows the user to reveal the app bar if they begin scrolling back
          // up the list of items.
          floating: true,
          // Make the initial height of the SliverAppBar larger than normal.
          expandedHeight: 50,
        ),
        SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildListDelegate([
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text('Overall Performance:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: new LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 1000,
              percent: 0.9,
              center: Text("90.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.greenAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.7,
                  center: new Text(
                    "7 Hrs",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  footer: new Padding(
                      padding: EdgeInsets.only(top: 7.5),
                      child: Container(
                          width: 125,
                          child: new Text(
                            "Your excercises this week",
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ))),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purple,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                ),
                new CircularPercentIndicator(
                  radius: 120.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.7,
                  center: new Text(
                    "70.0%",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  footer: new Padding(
                      padding: EdgeInsets.only(top: 7.5),
                      child: new Container(
                          width: 75,
                          child: Text(
                            "Your diet this week",
                            overflow: TextOverflow.clip,
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ))),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.purple,
                ),
              ],
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(top: 30.0, bottom: 10, left: 15, right: 15),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.10,
                  center: new Text("10%"),
                  progressColor: Colors.red,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.30,
                  center: new Text("30%"),
                  progressColor: Colors.orange,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.60,
                  center: new Text("60%"),
                  progressColor: Colors.yellow,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.90,
                  center: new Text("90%"),
                  progressColor: Colors.green,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.90,
                  center: new Text("90%"),
                  progressColor: Colors.green,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your excercises day by day',
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.5),
                child: Icon(Icons.fitness_center),
              )
            ],
          ),
          Container(
            padding:
                EdgeInsets.only(top: 30.0, bottom: 10, left: 15, right: 15),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.10,
                  center: new Text("10%"),
                  progressColor: Colors.red,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.30,
                  center: new Text("30%"),
                  progressColor: Colors.orange,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.60,
                  center: new Text("60%"),
                  progressColor: Colors.yellow,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.90,
                  center: new Text("90%"),
                  progressColor: Colors.green,
                ),
                new Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                ),
                new CircularPercentIndicator(
                  radius: 45.0,
                  lineWidth: 4.0,
                  percent: 0.90,
                  center: new Text("90%"),
                  progressColor: Colors.green,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your diet day by day',
                textAlign: TextAlign.center,
              ),
              Icon(Icons.food_bank),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              'Keep up! You are doing great.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ]))
      ],
    ));
  }
}
