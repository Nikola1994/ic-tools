import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';

class TitleText extends StatelessWidget {

  final String? titleText;
  final EdgeInsets margin;
  final int maxLines;

  const TitleText({ 
    Key? key,
    this.titleText,
    required this.margin,
    required this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: AutoSizeText(
        titleText ?? "",
        maxLines: maxLines,
      ),
    );
  }
}