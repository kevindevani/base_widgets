import 'package:flutter/material.dart';

///base header
class BaseHeaders extends StatelessWidget {
  final String title;
  final Function onBackPress;
  final double height;
  final Color color;
  final List<Widget> actions;
  final bool hasNotch;

  BaseHeaders(
      {this.title,
      this.height,
      this.color,
      this.onBackPress,
      this.actions,
      this.hasNotch});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? hasNotch ? 94 : 80,
      color: color ?? Colors.blue,
      padding: EdgeInsets.only(top: hasNotch ? 32 : 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 12),
                child: InkWell(
                  onTap: onBackPress,
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    // size: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              children: actions ?? [],
            ),
          ),
        ],
      ),
    );
  }
}
