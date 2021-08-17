import 'package:flutter/material.dart';

class ZuriAppBar extends StatefulWidget implements PreferredSizeWidget {
  ZuriAppBar({
    Key key,
  })  : preferredSize = Size.fromHeight(170),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _ZuriAppBarState createState() => _ZuriAppBarState();
}

class _ZuriAppBarState extends State<ZuriAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.yellow[50].withOpacity(0.8),
      flexibleSpace: Align(
        alignment: Alignment.bottomCenter,
        child: const Image(
          fit: BoxFit.fitHeight,
          image: AssetImage('assets/images/appbar_cover.jpg'),
        ),
      ),
    );
  }
}
