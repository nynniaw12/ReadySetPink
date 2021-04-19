import 'package:flutter/material.dart';
import 'package:flutterexcercisesforcancerapp/constants.dart';
import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutterexcercisesforcancerapp/screens/home.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:async';

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');
  return "$hours:$minutes:$seconds";
}

class Excercising extends StatefulWidget {
  final int dd;
  Excercising(this.dd);

  @override
  _ExcercisingState createState() => _ExcercisingState();
}

class _ExcercisingState extends State<Excercising> {
  Stopwatch _stopwatch;
  Timer _timer;
  double percentage;
  bool _enabled = false;
  bool _enabled2 = false;
  int i = 0;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _timer = new Timer.periodic(new Duration(milliseconds: 30), (timer) {
      setState(() {
        percentage = _stopwatch.elapsedMilliseconds / 10000;
        if (percentage >= 0.96) {
          _stopwatch.stop();
          percentage = 1.0;
          if (_enabled2 == false && i == 0) {
            _enabled2 = true;
            i = 1;
          }
          _enabled = false;
        }
      });
    });
  }

  void handleStartStop() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }

    setState(() {});
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned.fill(
              child: Image.network(
                excercises1[widget.dd]['img'],
                fit: BoxFit.cover,
                color: Colors.black38,
                colorBlendMode: BlendMode.darken,
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.25),
                ),
                Align(
                  alignment: Alignment.center,
                  child: ShakeAnimatedWidget(
                    enabled: this._enabled,
                    duration: Duration(milliseconds: 10000),
                    shakeAngle: Rotation.deg(z: 360),
                    curve: Curves.linear,
                    child: IconButton(
                      icon: const Icon(Icons.settings),
                      iconSize: 250,
                      onPressed: () {
                        setState(() {
                          _enabled = !_enabled;
                        });
                        handleStartStop();
                      },
                    ), /* your widget */
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: LinearPercentIndicator(
                      width: MediaQuery.of(context).size.width - 50,
                      animation: false,
                      lineHeight: 20.0,
                      animationDuration: 1000,
                      percent: percentage,
                      center: Text('the value is $percentage'),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      progressColor: Colors.greenAccent,
                    )),
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(formatTime(_stopwatch.elapsedMilliseconds),
                    style: TextStyle(fontSize: 48.0)),
                TranslationAnimatedWidget(
                  enabled: this
                      ._enabled2, //update this boolean to forward/reverse the animation
                  values: [
                    Offset(0, 200), // disabled value value
                    Offset(0, 250), //intermediate value
                    Offset(0, 125) //enabled value
                  ],
                  duration: Duration(milliseconds: 500),
                  child: OpacityAnimatedWidget.tween(
                      enabled: this._enabled2,
                      opacityDisabled: 0,
                      opacityEnabled: 1,
                      duration: Duration(milliseconds: 500),
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[900],
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: InkWell(
                              onTap: () {
                                setState(() {
                                  _enabled2 = !_enabled2;
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home()),
                                );
                              },
                              child: Center(
                                child: Text("Dismiss"),
                              )),
                        ),
                      )), /* your widget */
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
