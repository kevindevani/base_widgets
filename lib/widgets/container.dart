import 'package:flutter/material.dart';

//base container with safearea
class BaseContainer extends StatelessWidget {
  final bool top;
  final bool bottom;
  final bool left;
  final bool right;
  final Widget child;

  const BaseContainer(
      {Key key,
      this.left = true,
      this.right = true,
      this.top = true,
      this.bottom = true,
      @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: child,
    );
  }
}
