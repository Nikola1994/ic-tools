import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ic_tools/app_localisation.dart';
import 'package:ic_tools/resources/values/colors.dart';
import 'package:ic_tools/resources/values/dimen.dart';

enum FormTextFieldEnum {
  text,
  password,
  email,
}

class FormTextField extends StatelessWidget {

  final FormTextFieldEnum type;
  final TextEditingController controller;
  final String? labelText;
  final EdgeInsets margin;
  final bool obscureText;
  final bool enabled;

  const FormTextField.text({
    Key? key,
    required this.controller,
    this.type = FormTextFieldEnum.text,
    this.margin = const EdgeInsets.only(bottom: margin_medium),
    this.labelText,
    this.obscureText = false,
    this.enabled = true
  }) : super(key: key);

  const FormTextField.email({
    Key? key,
    required this.controller,
    this.type = FormTextFieldEnum.email,
    this.margin = const EdgeInsets.only(bottom: margin_medium),
    this.labelText,
    this.obscureText = false,
    this.enabled = true
  }) : super(key: key);

  const FormTextField.password({
    Key? key,
    required this.controller,
    this.type = FormTextFieldEnum.password,
    this.margin = const EdgeInsets.only(bottom: margin_medium),
    this.labelText,
    this.obscureText = true,
    this.enabled = true
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            labelText ?? "",
            style: const TextStyle(
              fontSize: font_size,
              color: color_black,
            ),
            maxLines: 1,
          ),
          TextFormField(
            enabled: enabled,
            controller: controller,
            validator: (value) {
              if (type == FormTextFieldEnum.text) {
                if(value == null || value == "") {
                  return AppLocalizations.of(context).translate("text_field_validation");
                }
              }
              return null;
            },
            decoration: InputDecoration(
              filled: true,
              hintText: AppLocalizations.of(context).translate("text_field_start_typing_hint"),
              counterText: "",
            ),
            style: formTextStyle(),
            obscureText: obscureText,
          ),
        ],
      )
    );
  }
  
  TextStyle formTextStyle() {
    return const TextStyle(
      fontSize: font_size,
      color: color_black,
    );
  }
}