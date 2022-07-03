import 'package:flutter/material.dart';
import 'package:ic_tools/resources/values/colors.dart';
import 'package:ic_tools/resources/values/dimen.dart';

class BaseDialog extends StatelessWidget {

  final Widget child;

  const BaseDialog({
    Key? key,
    required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: color_white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(corner_radius),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: padding_large,
          vertical: padding_medium
        ),
        child: child
      )
    );
  }

}
