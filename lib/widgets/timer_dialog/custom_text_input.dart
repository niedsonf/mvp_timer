import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mvp_timer/constants/style.dart';

class CustomTextInput extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final List<TextInputFormatter> inputFormatters;
  final TextEditingController inputController;
  TextInputType? inputType;
  CustomTextInput(
      {Key? key,
      this.inputType,
      required this.inputController,
      required this.labelText,
      required this.icon,
      required this.inputFormatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      inputFormatters: inputFormatters,
      cursorColor: light,
      style: TextStyle(fontSize: 18, color: light),
      controller: inputController,
      onChanged: (text) {},
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
              fontSize: 14, color: light, fontWeight: FontWeight.w100),
          alignLabelWithHint: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          floatingLabelAlignment: FloatingLabelAlignment.start,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: light, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: light, width: 1),
          ),
          suffixIcon: Icon(icon, color: light, size: 20)),
    );
  }
}
