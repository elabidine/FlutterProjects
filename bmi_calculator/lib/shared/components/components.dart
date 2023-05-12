import 'package:flutter/material.dart';

Widget defaultbutton({
  double width = double.infinity,
  Color color = Colors.blue,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      color: color,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        textColor: Colors.white,
        child: Text(text.toUpperCase()),
      ),
    );

Widget defaultTextField({
  required TextEditingController controller,
  required TextInputType textInputType,
  bool obscureText = false,
  Function? onSubmitted,
  Function? onChanged,
  required String text,
  required Icon prefixIcon,
  required Icon suffixIcon,
  Function? validator,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: textInputType,
      obscureText: obscureText,
      onFieldSubmitted: onSubmitted!(),
      onChanged: onChanged!(),
      validator: validator!(),
      decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon),
    );
