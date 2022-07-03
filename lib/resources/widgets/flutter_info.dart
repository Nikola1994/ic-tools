import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ic_tools/resources/values/colors.dart';
import 'package:ic_tools/resources/values/dimen.dart';

class FlutterInfo extends StatelessWidget {
  
  const FlutterInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: margin_small
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              right: margin_small
            ),
            child: const FlutterLogo(
              size: icon_size_medium,
            )
          ),
          const AutoSizeText(
            "Made with Flutter\nStandard 2022",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: font_size_small,
              color: color_white,
            ),
            textAlign: TextAlign.left
          )
        ],
      )
    );
  }
}