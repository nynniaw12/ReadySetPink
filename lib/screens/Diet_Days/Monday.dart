import 'dart:math' as math;
import 'dart:ui';

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'Meal.dart';

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
            /*decoration: BoxDecoration(
                color: const Color(0xCF2789),
              border: Border.all(
                color: const Color(0xFFd888d8),
              ),
                ),*/
            //color: Color(0xFF7E29B1),
            color: Color(0xffff2e63),
            child: Center(
                child: Text(
              headerText,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: Container(
            decoration: BoxDecoration(
              /*gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                  colors: [
              Color.fromRGBO(253, 48, 53, 1),
              Color.fromRGBO(126, 41, 177, 1)
            ])*/
              //color: Color(0xFF7E29B1),
              color: Color(0xffff2e63),
            ),
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: CustomScrollView(
                                slivers: <Widget>[
                                  makeHeader('Breakfast'),
                                  SliverFixedExtentList(
                                    itemExtent: 75,
                                    delegate: SliverChildListDelegate(
                                      [
                                        Meal(widget.which, 1, 0),
                                        Meal(widget.which, 2, 1),
                                        Meal(widget.which, 3, 2),
                                      ],
                                    ),
                                  ),
                                  makeHeader('Lunch'),
                                  SliverFixedExtentList(
                                    itemExtent: 75,
                                    delegate: SliverChildListDelegate(
                                      [
                                        Meal(widget.which + 1, 1, 0),
                                        Meal(widget.which + 1, 2, 1),
                                        Meal(widget.which + 1, 3, 2),
                                        Meal(widget.which + 1, 4, 3),
                                      ],
                                    ),
                                  ),
                                  makeHeader('Dinner'),
                                  SliverFixedExtentList(
                                    itemExtent: 75,
                                    delegate: SliverChildListDelegate(
                                      [
                                        Meal(widget.which + 2, 1, 0),
                                        Meal(widget.which + 2, 2, 1),
                                        Meal(widget.which + 2, 3, 2),
                                        Meal(widget.which + 2, 4, 3),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                        Padding(padding: EdgeInsets.only(bottom: 20))
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 0),
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
          )),
    ));
  }
}
