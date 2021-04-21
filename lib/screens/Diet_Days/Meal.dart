import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterexcercisesforcancerapp/screens/Recipe.dart';
import 'package:flutterexcercisesforcancerapp/constants.dart';

class Meal extends StatefulWidget {
  final int which;
  final int index;
  final int bbstart;
  Meal(this.which, this.index, this.bbstart);
  @override
  _MealState createState() => _MealState();
}

class _MealState extends State<Meal> {
  int _bb;
  Color primaryColor;
  suggestNew() {
    setState(() {
      if (_bb == listrecipes[widget.which].length - 1) {
        _bb = 0;
      } else {
        _bb += 1;
      }
    });
  }

  Color _colorContainer;

  @override
  void initState() {
    super.initState();
    // NOTE: Calling this function here would crash the app.
    setState(() {
      _bb = widget.bbstart;
      primaryColor = /*const Color(0xFFffd4e6)*//*Color(0xFFFBD0E9)*/Color(0xFFFFC2C2);
      /*if (widget.index % 2 == 0) {
        primaryColor = const Color(0xFFffd4e6);
      } else {
        primaryColor = const Color(0xFFffd4a8);
      }*/
      _colorContainer = primaryColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      //color: _colorContainer,
      child: ClipRRect(
        borderRadius: BorderRadius.all(new Radius.circular(20)),
            child: Container(
              color: _colorContainer,
              child: Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: Ink(
                    child: InkWell(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: const Color(0xFFff2e63),
                      child: Text('${widget.index}'),
                      foregroundColor: Colors.white,
                    ),
                    title: Text("${listrecipes[widget.which][_bb]['name']}",
                        style: TextStyle(color: Colors.grey[850])),
                    subtitle: Text("${listrecipes[widget.which][_bb]['shortdesc']}",
                        style: TextStyle(color: const Color(0xFF4f4f4f))),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details(_bb)),
                    );
                  },
                )),
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Suggest new',
                    color: Color(0xFF993FFF),
                    icon: Icons.more_horiz,
                    onTap: () => suggestNew(),
                  ),
                  IconSlideAction(
                    caption: 'Eaten/Uneaten',
                    color: Color(0xFFFF722E),
                    icon: Icons.swap_horiz_rounded,
                    onTap: () {
                      setState(() {
                        _colorContainer = _colorContainer == Color(0xFFff9d9d)
                            ? primaryColor
                            : const Color(0xFFff9d9d);
                      });
                    },
                  ),
                ],
              ),
            ),
      ),
    );

  }
}
