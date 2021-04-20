import 'package:flutter/material.dart';

class VerticalText extends StatefulWidget {
  @override
  _VerticalTextState createState() => _VerticalTextState();
}

class _VerticalTextState extends State<VerticalText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6.5),
      child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            'Sign in',
            textHeightBehavior: TextHeightBehavior(leadingDistribution: TextLeadingDistribution.even),
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }
}
