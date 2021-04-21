import 'package:flutter/material.dart';
import 'package:flutterexcercisesforcancerapp/profile/components/profile_pic.dart';
import 'decorated_table_page.dart';

class LandingPage extends StatefulWidget {
  final columns = 10;
  final rows = 20;

  List<List<String>> makeData() {
    final List<List<String>> output = [];
    for (int i = 0; i < columns; i++) {
      final List<String> row = [];
      for (int j = 0; j < rows; j++) {
        row.add('L$j : T$i');
      }
      output.add(row);
    }
    return output;
  }

  /// Simple generator for column title
  List<String> makeTitleColumn() => List.generate(columns, (i) => 'Top $i');

  /// Simple generator for row title
  List<String> makeTitleRow() => List.generate(rows, (i) => 'Left $i');

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[600],
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
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 85, top: 15, bottom: 15, right: 25),
                      child: Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width - 110,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            )),
                        child: Stack(
                          children: [
                            Center(
                                child: Container(
                              color: Colors.white,
                              height: 2,
                              width: MediaQuery.of(context).size.width - 110,
                            )),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  color: Colors.white,
                                  height: 60,
                                  width: 2,
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 17.5),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Name Surname",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 17.5),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Name Surname",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 17.5,
                                  left: (MediaQuery.of(context).size.width -
                                          110) *
                                      0.225),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Age",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: 17.5,
                                  right: (MediaQuery.of(context).size.width -
                                          110) *
                                      0.225),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Gender",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, left: 25, bottom: 15),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            AssetImage("assets/images/Profile Image.png"),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: DecoratedTablePage(
                      titleColumn: widget.makeTitleColumn(),
                      titleRow: widget.makeTitleRow(),
                      data: widget.makeData(),
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: DecoratedTablePage(
                      titleColumn: widget.makeTitleColumn(),
                      titleRow: widget.makeTitleRow(),
                      data: widget.makeData(),
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 45),
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.save_alt, size: 18),
                          label: Text('Export'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.amber),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(color: Colors.amber)))),
                          onPressed: () {},
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: 45),
                        child: ElevatedButton.icon(
                          icon: Icon(Icons.feedback, size: 18),
                          label: Text('Send Feedback'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.amber),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      side: BorderSide(color: Colors.amber)))),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 25))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
