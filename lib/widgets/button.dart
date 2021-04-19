import 'package:flutter/material.dart';

import '../widgets/Loader.dart';

/// base button
class BaseButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final double height;
  final double width;
  final Color color;
  final Color labelColor;
  final double radius;
  final double lableFontSize;

  BaseButton({
    @required this.label,
    @required this.onPress,
    this.height,
    this.width,
    this.color,
    this.labelColor,
    this.radius,
    this.lableFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 50,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 12.0),
          ),
          color: color ?? Colors.blue,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: labelColor ?? Colors.white,
            fontSize: lableFontSize ?? 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

///base gradinetButton
class BaseGradientButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final double height;
  final double width;
  final Color color1;
  final Color color2;
  final Color labelColor;
  final double radius;
  final double lableFontSize;

  BaseGradientButton({
    @required this.label,
    @required this.onPress,
    this.height,
    this.width,
    this.color1,
    this.color2,
    this.labelColor,
    this.radius,
    this.lableFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 50,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 12.0),
          ),
          gradient: LinearGradient(
            colors: [
              color1 ?? Color(0xff374ABE),
              color2 ?? Color(0xff64B6FF),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: labelColor ?? Colors.white,
            fontSize: lableFontSize ?? 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

//loader button
class LoaderButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final double height;
  final double width;
  final Color color;
  final Color labelColor;
  final double radius;
  final double lableFontSize;
  final bool loading;

  LoaderButton({
    @required this.label,
    @required this.onPress,
    @required this.loading,
    this.height,
    this.width,
    this.color,
    this.labelColor,
    this.radius,
    this.lableFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 50,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 12.0),
          ),
          color: color ?? Colors.blue,
        ),
        child: loading
            ? Loader(
                color: Colors.white,
              )
            : Text(
                label,
                style: TextStyle(
                  color: labelColor ?? Colors.white,
                  fontSize: lableFontSize ?? 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}
