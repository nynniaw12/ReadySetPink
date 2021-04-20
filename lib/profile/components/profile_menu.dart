import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const kPrimaryColor = Color(0xFFFF722E);

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white/*Color(0xFFff9d9d)*/,
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: 22,
            ),
            SizedBox(width: 20),
            Expanded(
                child: Text(text, style: TextStyle(color: Colors.black))),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[700],
            ),
          ],
        ),
      ),
    );
  }
}
