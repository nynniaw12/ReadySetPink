import 'package:flutter/material.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';

class DecoratedTablePage extends StatelessWidget {
  DecoratedTablePage({this.data, this.titleColumn, this.titleRow, this.legend});

  final List<List<String>> data;
  final List<String> titleColumn;
  final List<String> titleRow;
  final String legend;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          child: StickyHeadersTable(
            columnsLength: titleColumn.length,
            rowsLength: titleRow.length,
            columnsTitleBuilder: (i) => TableCell.stickyRow(
              titleColumn[i],
              textStyle: textTheme.button.copyWith(fontSize: 12.5),
            ),
            rowsTitleBuilder: (i) => TableCell.stickyColumn(
              titleRow[i],
              textStyle: textTheme.button
                  .copyWith(fontSize: 15.0, color: Colors.black),
            ),
            contentCellBuilder: (i, j) => TableCell.content(
              data[i][j],
              textStyle: textTheme.bodyText2
                  .copyWith(fontSize: 12.0, color: Colors.black),
            ),
            legendCell: TableCell.legend(
              legend,
              textStyle: textTheme.button.copyWith(fontSize: 16.5),
            ),
          ),
        ));
  }
}

class TableCell extends StatelessWidget {
  TableCell.content(
    this.text, {
    this.textStyle,
    this.cellDimensions = CellDimensions.base,
    this.colorBg = Colors.white,
    this.onTap,
  })  : cellWidth = cellDimensions.contentCellWidth,
        cellHeight = cellDimensions.contentCellHeight,
        _colorHorizontalBorder = Color(0xFF993FFF),
        _colorVerticalBorder = Color(0xFF993FFF),
        _textAlign = TextAlign.center,
        _padding = EdgeInsets.zero;

  TableCell.legend(
    this.text, {
    this.textStyle,
    this.cellDimensions = CellDimensions.base,
    this.colorBg = const Color(0xFF993FFF),
    this.onTap,
  })  : cellWidth = cellDimensions.stickyLegendWidth,
        cellHeight = cellDimensions.stickyLegendHeight,
        _colorHorizontalBorder = Colors.white,
        _colorVerticalBorder = Color(0xFF993FFF),
        _textAlign = TextAlign.start,
        _padding = EdgeInsets.only(left: 24.0);

  TableCell.stickyRow(
    this.text, {
    this.textStyle,
    this.cellDimensions = CellDimensions.base,
    this.colorBg = const Color(0xFF993FFF),
    this.onTap,
  })  : cellWidth = cellDimensions.contentCellWidth,
        cellHeight = cellDimensions.stickyLegendHeight,
        _colorHorizontalBorder = Colors.white,
        _colorVerticalBorder = Color(0xFF993FFF),
        _textAlign = TextAlign.center,
        _padding = EdgeInsets.zero;

  TableCell.stickyColumn(
    this.text, {
    this.textStyle,
    this.cellDimensions = CellDimensions.base,
    this.colorBg = Colors.white,
    this.onTap,
  })  : cellWidth = cellDimensions.stickyLegendWidth,
        cellHeight = cellDimensions.contentCellHeight,
        _colorHorizontalBorder = Color(0xFF993FFF),
        _colorVerticalBorder = Colors.black38,
        _textAlign = TextAlign.start,
        _padding = EdgeInsets.only(left: 24.0);

  final CellDimensions cellDimensions;

  final String text;
  final Function() onTap;

  final double cellWidth;
  final double cellHeight;

  final Color colorBg;
  final Color _colorHorizontalBorder;
  final Color _colorVerticalBorder;

  final TextAlign _textAlign;
  final EdgeInsets _padding;

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: cellWidth,
        height: cellHeight,
        padding: _padding,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 2.0),
                child: Text(
                  text,
                  style: textStyle,
                  maxLines: 2,
                  textAlign: _textAlign,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.1,
              color: _colorVerticalBorder,
            ),
          ],
        ),
        decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: _colorHorizontalBorder),
              right: BorderSide(color: _colorHorizontalBorder),
            ),
            color: colorBg),
      ),
    );
  }
}
