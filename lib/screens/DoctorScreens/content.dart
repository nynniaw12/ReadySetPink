import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterexcercisesforcancerapp/screens/DoctorScreens/patientWidget.dart';

class Content extends StatefulWidget {
  final String title;
  final int index;
  Content(this.title, this.index);
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
              borderRadius: BorderRadius.all(new Radius.circular(20)),
              child: Material(
                child: InkWell(
                    onTap: () {
                      print("tappedd");
                      print(widget.index);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LandingPage()),
                      );
                    },
                    child: Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      actionExtentRatio: 0.25,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Color(0xFFff2e63),//Değişecek Bura 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  widget.title,
                                  style: TextStyle(
                                      color: Colors.grey[100], fontSize: 16),
                                )),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(Icons.arrow_right),
                            )
                          ],
                        ),
                      ),
                      secondaryActions: <Widget>[
                        IconSlideAction(
                          caption: 'Send Feedback',
                          color: Colors.black45,
                          icon: Icons.feedback,
                          onTap: () {},
                        ),
                        IconSlideAction(
                          caption: 'Export',
                          color: Colors.red,
                          icon: Icons.save_alt,
                          onTap: () {},
                        ),
                      ],
                    )),
              ))),
    ]);
  }
}
