import 'package:flutter/material.dart';
import 'content.dart';

final items = List<String>.generate(25, (i) => "Patient #$i");

class PatientsWidget extends StatefulWidget {
  @override
  _PatientsWidgetState createState() => _PatientsWidgetState();
}

class _PatientsWidgetState extends State<PatientsWidget> {
  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "obs") {
        visibilitySearch = visibility;
      }
    });
  }

  Icon _iconSearch = Icon(Icons.search);

  bool visibilitySearch = false;

  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(25, (i) => "Patient #$i");

  @override
  void initState() {
    super.initState();
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(duplicateItems);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.contains(query)) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items.clear();
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(duplicateItems);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your patients:',
                style: TextStyle(color: Colors.grey[100], fontSize: 18),
              ),
              InkWell(
                onTap: () {
                  if (visibilitySearch == true) {
                    _changed(false, "obs");
                    setState(() {
                      _iconSearch = Icon(Icons.search);
                    });
                  } else if (visibilitySearch == false) {
                    _changed(true, "obs");
                    setState(() {
                      _iconSearch = Icon(Icons.arrow_upward);
                    });
                  }
                },
                child: _iconSearch,
              )
            ],
          ),
          // Allows the user to reveal the app bar if they begin scrolling back
          // up the list of items.
          floating: true,
          // Make the initial height of the SliverAppBar larger than normal.
          expandedHeight: 50,
        ),
        SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildListDelegate([
          visibilitySearch
              ? new Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Expanded(
                        flex: 11,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: new TextField(
                            onChanged: (value) {
                              filterSearchResults(value);
                            },
                            controller: editingController,
                            decoration:
                                InputDecoration(prefixIcon: Icon(Icons.search)),
                          ),
                        )),
                  ],
                )
              : new Container(),
        ])),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Content(items[index], index);
          },
          childCount: items.length,
        )),
      ],
    ));
  }
}
