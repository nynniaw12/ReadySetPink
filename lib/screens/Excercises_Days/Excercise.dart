import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'ExcerciseGuide.dart';
import 'package:flutterexcercisesforcancerapp/constants.dart';

class Excercise extends StatefulWidget {
  final int which;
  final int index;
  final int bbstart;
  Excercise(this.which, this.index, this.bbstart);
  @override
  _ExcerciseState createState() => _ExcerciseState();
}

class _ExcerciseState extends State<Excercise> {
  int _bb;

  suggestNew() {
    setState(() {
      if (_bb == listexcercises[widget.which].length - 1) {
        _bb = 0;
      } else {
        _bb += 1;
      }
    });
  }

  Color _colorContainer = const Color(0xFFffd4e6);

  @override
  void initState() {
    super.initState();
    // NOTE: Calling this function here would crash the app.
    setState(() {
      _bb = widget.bbstart;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
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
                  backgroundColor: const Color(0xFFC33187),
                  child: Text('${widget.index}'),
                  foregroundColor: Colors.white,
                ),
                title: Text("${listexcercises[widget.which][_bb]['name']}",
                    style: TextStyle(color: Colors.grey[850])),
                subtitle: Text(
                    "${listexcercises[widget.which][_bb]['shortdesc']}",
                    style: TextStyle(color: const Color(0xFF4f4f4f))),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Excercisesguide(_bb)),
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
                caption: 'Done/Undone',
                color: Color(0xFFFF722E),
                icon: Icons.swap_horiz_rounded,
                onTap: () {
                  setState(() {
                    _colorContainer = _colorContainer == Color(0xFFff83ad)
                        ? const Color(0xFFFFC2C2)
                        : const Color(0xFFff83ad);
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
