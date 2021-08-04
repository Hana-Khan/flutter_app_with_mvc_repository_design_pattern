
import 'package:flutter/material.dart';

Widget customText({
    String? labelText,
    TextStyle? labelTextStyle
  })
  {
    return Text(
      labelText!,
      textAlign: TextAlign.left,
      style: labelTextStyle!,
    );
  }