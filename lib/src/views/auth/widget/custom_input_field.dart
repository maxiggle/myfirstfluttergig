import 'package:flutter/material.dart';

import '../../../../config/theme/typography.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController inputController;
  final String hintText;
  final Color primaryColor;
  final String labelText;

  const CustomInputField(
      {Key? key,
      required this.inputController,
      required this.hintText,
      required this.labelText,
      this.primaryColor = const Color(0xff97A1B4)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: inputController,
        onChanged: (value) {
          //Do something wi
        },
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(fontSize: 16, color: Colors.black),
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          hintText: hintText,
          hintStyle: smallTextStyle,
          fillColor: Colors.transparent,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 0.0),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff97A1B4), width: 0.0),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor, width: 0.0),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
