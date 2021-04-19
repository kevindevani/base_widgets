import 'package:flutter/material.dart';

///base card
class BaseCard extends StatelessWidget {
  final double radius;
  final Color color;
  final Widget child;

  BaseCard({this.radius, this.color, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 12.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 5.0,
          ),
        ],
        color: color ?? Colors.white,
      ),
      child: child,
    );
  }
}
