import 'dart:math' as math;

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterexcercisesforcancerapp/screens/Recipe.dart';
import 'package:flutterexcercisesforcancerapp/constants.dart';

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class Monday extends StatefulWidget {
  final String day;
  final int which;
  Monday(this.day, this.which);

  @override
  _MondayState createState() => _MondayState();
}

class _MondayState extends State<Monday> {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 100.0,
        child: Container(
            color: Colors.lightBlue, child: Center(child: Text(headerText))),
      ),
    );
  }

  int _bb = 0;

  suggestNew() {
    setState(() {
      if (_bb == recipes1.length - 1) {
        _bb = 0;
      } else {
        _bb += 1;
      }
    });
  }

  Color _colorContainer = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ScrollOnExpand(
              scrollOnExpand: true,
              scrollOnCollapse: false,
              child: ExpandablePanel(
                theme: const ExpandableThemeData(
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  tapBodyToCollapse: true,
                ),
                header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      widget.day,
                      style: Theme.of(context).textTheme.body2,
                    )),
                collapsed: Container(),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        height: 750,
                        child: CustomScrollView(
                          slivers: <Widget>[
                            makeHeader('Breakfast'),
                            SliverFixedExtentList(
                              itemExtent: 150.0,
                              delegate: SliverChildListDelegate(
                                [
                                  Container(color: Colors.red),
                                  Container(color: Colors.purple),
                                  Container(color: Colors.green),
                                  Container(color: Colors.orange),
                                  Container(color: Colors.yellow),
                                ],
                              ),
                            ),
                            makeHeader('Lunch'),
                            SliverFixedExtentList(
                              itemExtent: 75,
                              delegate: SliverChildListDelegate(
                                [
                                  Slidable(
                                    actionPane: SlidableDrawerActionPane(),
                                    actionExtentRatio: 0.25,
                                    child: Ink(
                                        child: InkWell(
                                      child: Container(
                                        color: _colorContainer,
                                        height: 75,
                                        child: ListTile(
                                          leading: CircleAvatar(
                                            backgroundColor:
                                                Colors.indigoAccent,
                                            child: Text('1'),
                                            foregroundColor: Colors.white,
                                          ),
                                          title: Text(
                                              "${listrecipes[widget.which][_bb]['name']}"),
                                          subtitle: Text(
                                              "${listrecipes[widget.which][_bb]['shortdesc']}"),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Details()),
                                        );
                                      },
                                    )),
                                    secondaryActions: <Widget>[
                                      IconSlideAction(
                                        caption: 'Suggest new',
                                        color: Colors.black45,
                                        icon: Icons.more_horiz,
                                        onTap: () => suggestNew(),
                                      ),
                                      IconSlideAction(
                                        caption: 'Eaten/Uneaten',
                                        color: Colors.red,
                                        icon: Icons.swap_horiz_rounded,
                                        onTap: () {
                                          setState(() {
                                            _colorContainer =
                                                _colorContainer == Colors.pink
                                                    ? Colors.blue
                                                    : Colors.pink;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  Container(color: Colors.purple),
                                  Container(color: Colors.green),
                                  Container(color: Colors.orange),
                                  Container(color: Colors.yellow),
                                ],
                              ),
                            ),
                            makeHeader('Dinner'),
                            SliverFixedExtentList(
                              itemExtent: 150.0,
                              delegate: SliverChildListDelegate(
                                [
                                  Container(color: Colors.red),
                                  Container(color: Colors.purple),
                                  Container(color: Colors.green),
                                  Container(color: Colors.orange),
                                  Container(color: Colors.yellow),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 0),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      theme: const ExpandableThemeData(crossFadePoint: 0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
