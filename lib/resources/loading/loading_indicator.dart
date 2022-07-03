import 'package:flutter/material.dart';
import 'package:ic_tools/resources/values/dimen.dart';

class LoadingIndicator extends StatelessWidget {

  final Color color;

  const LoadingIndicator({
    Key? key,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: margin_large
      ),
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}