import 'package:flutter/material.dart';

class RoundedInputField extends StatefulWidget {
  final String _hintText;

  const RoundedInputField({Key key, @required String hintText})
      : assert(hintText != null),
        _hintText = hintText,
        super(key: key);

  @override
  State<StatefulWidget> createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: beautifulDecoration(widget._hintText),
    );
  }
}

InputDecoration beautifulDecoration(String hint) {
  OutlineInputBorder noBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(12.0),
  );

  return new InputDecoration(
    hintText: hint,
    filled: true,
    fillColor: Color(0xFFF2F2F2),
    focusedBorder: noBorder,
    enabledBorder: noBorder,
  );
}
