import 'package:flutter/material.dart';

///base card
class BaseCard extends StatelessWidget {
  final double radius;
  final Color color;
  final Widget child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  BaseCard({
    this.radius,
    this.color,
    this.child,
    this.margin,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.all(16.0),
      padding: padding ?? EdgeInsets.all(16.0),
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
