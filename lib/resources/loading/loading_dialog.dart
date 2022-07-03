import 'package:flutter/material.dart';
import 'package:ic_tools/app_localisation.dart';
import 'package:ic_tools/resources/loading/base_dialog.dart';
import 'package:ic_tools/resources/loading/loading_indicator.dart';
import 'package:ic_tools/resources/values/colors.dart';
import 'package:ic_tools/resources/widgets/text/title_text.dart';
import '../values/dimen.dart';

class LoadingDialog extends StatelessWidget {

  const LoadingDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseDialog(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const LoadingIndicator(
            color: color_blue,
          ),
          Expanded(
            child: TitleText(
              titleText: AppLocalizations.of(context).translate("loading_dialog_title"),
              maxLines: 2,
              margin: const EdgeInsets.only(
                right: margin_larger
              ),
            )
          )
        ]
      )
    );
  }

  static _show(BuildContext context) {
    showDialog (
      barrierColor: color_black.withOpacity(0.5),
      barrierDismissible: true,
      context: context,
      builder: (context) => const LoadingDialog()
    );
  }

  static show(BuildContext context) {
    _show(context);
  }

  static close(BuildContext context) {
    Navigator.pop(context);
  }

}