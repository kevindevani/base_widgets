import 'package:flutter/material.dart';

///base loader
class BaseLoader extends StatelessWidget {
  final Color color;

  BaseLoader({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(color),
        ),
      ),
    );
  }
}

/// this widget for the loader button
class Loader extends StatelessWidget {
  final Color color;

  Loader({this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 22,
          width: 22,
          alignment: Alignment.center,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ),
    );
  }
}
