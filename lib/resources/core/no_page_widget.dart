import 'package:flutter/material.dart';
import 'package:ic_tools/resources/values/colors.dart';
import 'package:ic_tools/resources/values/dimen.dart';

class NoPageWidget extends StatelessWidget {

  const NoPageWidget({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color_yellow,
      alignment: Alignment.center,
      child: const Icon(
        Icons.error,
        size: icon_size_xxxlarge,
        color: color_white,
      ),
    );
  }

}