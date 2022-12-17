import 'package:flutter/material.dart';

import 'colors.dart';

const TextStyle h1TextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w700,
);
const TextStyle h2TextStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w700,
);
const TextStyle h3TextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
);
const TextStyle h4TextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
const TextStyle h5TextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
);

const TextStyle bodyTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w400,
);
const TextStyle bodySemiBoldTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
);
const TextStyle bodyBoldTextStyle = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w700,
);

const TextStyle smallTextStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w400,
);
const TextStyle smallSemiBoldTextStyle = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w700,
);

const TextStyle microTextStyle = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w400,
);
const TextStyle microBoldTextStyle = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w700,
);

const TextStyle nanoTextStyle = TextStyle(
  fontSize: 9,
  fontWeight: FontWeight.w400,
);
const TextStyle nanoBoldTextStyle = TextStyle(
  fontSize: 9,
  fontWeight: FontWeight.w700,
);

class Texty extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextOverflow overflow;

  Texty.h1(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = h1TextStyle.copyWith(color: color);
  Texty.h2(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = h2TextStyle.copyWith(color: color);
  Texty.h3(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = h3TextStyle.copyWith(color: color);
  Texty.h4(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = h4TextStyle.copyWith(color: color);
  Texty.h5(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = h5TextStyle.copyWith(color: color);

  Texty.body(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = bodyTextStyle.copyWith(color: color);
  Texty.bodySemiBold(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = bodySemiBoldTextStyle.copyWith(color: color);
  Texty.bodyBold(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = bodyBoldTextStyle.copyWith(color: color);

  Texty.small(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = smallTextStyle.copyWith(color: color);
  Texty.smallSemiBold(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = smallSemiBoldTextStyle.copyWith(color: color);

  Texty.micro(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = microTextStyle.copyWith(color: color);
  Texty.microBold(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = microBoldTextStyle.copyWith(color: color);

  Texty.nano(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = nanoTextStyle.copyWith(color: color);
  Texty.nanoBold(
    this.text, {
    super.key,
    Color color = kColorBlack,
    this.overflow = TextOverflow.visible,
  }) : style = nanoBoldTextStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, overflow: overflow);
  }
}
