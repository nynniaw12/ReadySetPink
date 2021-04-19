import 'package:flutter/material.dart';

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
      InkWell(
        onTap: () {
          print("tappedd");
          print(widget.index);
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          color: Colors.grey[800].withOpacity(0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    widget.title,
                    style: TextStyle(color: Colors.grey[100], fontSize: 16),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(Icons.arrow_right),
              )
            ],
          ),
        ),
      ),
      Container(
        height: 1.75,
        color: Colors.grey[800].withOpacity(1),
      ),
    ]);
  }
}
