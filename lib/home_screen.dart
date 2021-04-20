import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';

import 'package:basewidgets/widgets/button.dart';
import 'package:basewidgets/widgets/card.dart';
import 'package:basewidgets/widgets/header.dart';
import 'package:basewidgets/widgets/loader.dart';
import 'package:basewidgets/widgets/container.dart';
import 'package:basewidgets/widgets/textformfield.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(widget.title)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ///base header
              BaseHeaders(
                title: 'Base Header',
                hasNotch: Device.get().isIphoneX,
                actions: [
                  Container(
                    margin: EdgeInsets.only(right: 12),
                    child: InkWell(
                      onTap: () {
                        debugPrint('Clicked');
                      },
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        // size: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 12),
                    child: InkWell(
                      onTap: () {
                        debugPrint('Clicked');
                      },
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        // size: 20,
                      ),
                    ),
                  ),
                ],
              ),

              ///Base Button
              Container(
                margin: EdgeInsets.all(22),
                child: BaseButton(
                  label: 'Base Button',
                  onPress: () {
                    debugPrint('BaseButton Clicked');
                  },
                  radius: 8,
                  height: 56,
                  labelColor: Colors.white,
                  lableFontSize: 18,
                  color: Colors.blue,
                ),
              ),

              ///base gradient button
              Container(
                margin: EdgeInsets.all(22),
                child: BaseGradientButton(
                  label: 'Base Gradient Button',
                  onPress: () {
                    debugPrint('BaseButton Clicked');
                  },
                  radius: 8,
                  height: 56,
                  labelColor: Colors.white,
                  lableFontSize: 18,
                  color1: Colors.black,
                  color2: Colors.grey,
                ),
              ),

              /// Base Loader
              BaseLoader(
                color: Colors.blue,
              ),

              ///base card
              BaseCard(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BaseCard'),
                      Container(
                        alignment: Alignment.centerRight,
                        child: BaseButton(
                          label: 'Submit',
                          onPress: () {
                            debugPrint('BaseButton Clicked');
                          },
                          radius: 8,
                          height: 56,
                          width: 200,
                          labelColor: Colors.white,
                          lableFontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              ///base Container
              BaseContainer(
                child: Text('Hello World'),
              ),

              ///base textformfield
              Container(
                margin: EdgeInsets.all(12),
                child: BaseTextFormField(
                  txContentPadding: EdgeInsets.all(12),
                  txHint: "hello@gmail.com",
                  txprefix: Icon(Icons.email),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.star_border_rounded),
      ),
    );
  }
}
