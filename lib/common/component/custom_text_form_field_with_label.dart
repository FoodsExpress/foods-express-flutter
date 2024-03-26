import 'package:flutter/material.dart';
import 'package:foods_express/common/const/colors.dart';

class CustomTextFormFieldWithLabel extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChanged;

  const CustomTextFormFieldWithLabel({
    required this.onChanged,
    this.labelText,
    this.autofocus = false,
    this.obscureText = false,
    this.hintText,
    this.errorText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: PRIMARY_COLOR,
      obscureText: obscureText,
      autofocus: autofocus,
      onChanged: onChanged,
      decoration: InputDecoration(
        label: Text.rich(
          TextSpan(
            children: <InlineSpan>[
              WidgetSpan(
                child: Text(labelText!),
              ),
              const WidgetSpan(
                child: Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
