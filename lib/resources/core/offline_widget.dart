import 'package:flutter/material.dart';
import 'package:ic_tools/resources/values/colors.dart';
import 'package:ic_tools/resources/values/dimen.dart';

class OfflineWidget extends StatelessWidget {

  const OfflineWidget({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color_red,
      alignment: Alignment.center,
      child: const Icon(
        Icons.signal_wifi_off,
        size: icon_size_xxxlarge,
        color: color_white,
      ),
    );
  }

}