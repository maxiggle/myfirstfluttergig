import 'package:flutter/materiaL.dart';

import '../../gen/assets.gen.dart';
import 'colors.dart';
import 'typography.dart';

enum ButtonTypes {
  primary,
  red,
  green,
  outline,
}

class AppButton extends StatelessWidget {
  const AppButton(
    this.text, {
    Key? key,
    this.onPressed,
    this.small = false,
    this.type = ButtonTypes.primary,
    this.icon,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  final bool small;
  final ButtonTypes type;
  final Widget? icon;

  const AppButton.small(
    this.text, {
    Key? key,
    this.onPressed,
    this.type = ButtonTypes.primary,
    this.icon,
  })  : small = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    );
    final Color textColor = getTextColor(type);
    final Color bgColor = getButtonColor(type);
    final TextStyle textStyle = small ? smallSemiBoldTextStyle : bodyTextStyle;
    final minimumSize = Size(0, small ? 36 : 44);
    final padding = EdgeInsets.symmetric(horizontal: small ? 16 : 24);

    if (type == ButtonTypes.outline) {
      return OutlinedButton(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          shape: shape,
          side: BorderSide(width: 0.5, color: kColorGrey60),
          foregroundColor: textColor,
          textStyle: textStyle,
          minimumSize: minimumSize,
          padding: padding,
        ),
        onPressed: onPressed,
        child: Text(text),
      );
    }

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: shape,
        backgroundColor: bgColor,
        foregroundColor: textColor,
        textStyle: textStyle,
        minimumSize: minimumSize,
        padding: padding,
      ),
      onPressed: onPressed,
      child: icon == null
          ? Text(text)
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                icon!,
                const SizedBox(width: 8),
                Text(text),
              ],
            ),
    );
  }

  Color getButtonColor(ButtonTypes type) {
    switch (type) {
      case ButtonTypes.primary:
        return kColorBlue;
      case ButtonTypes.red:
        return kColorRed10;
      case ButtonTypes.green:
        return kColorGreen;
      case ButtonTypes.outline:
        return Colors.transparent;
    }
  }

  Color getTextColor(ButtonTypes type) {
    switch (type) {
      case ButtonTypes.primary:
        return kColorWhite;
      case ButtonTypes.red:
        return kColorRed;
      case ButtonTypes.green:
        return kColorWhite;
      case ButtonTypes.outline:
        return kColorGrey60;
    }
  }
}

class SendMessageButton extends StatelessWidget {
  const SendMessageButton({
    super.key,
    this.onPressed,
    this.text = 'Send',
  });

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(36),
    );
    const Color textColor = kColorWhite;
    final Color bgColor = kColorBlue;
    const TextStyle textStyle = bodySemiBoldTextStyle;
    const minimumSize = Size(0, 28);
    const padding = EdgeInsets.symmetric(horizontal: 10);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: shape,
        backgroundColor: bgColor,
        foregroundColor: textColor,
        textStyle: textStyle,
        minimumSize: minimumSize,
        padding: padding,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text),
          const SizedBox(width: 6),
          Assets.icons.send.svg(
            width: 15,
            height: 15,
            color: kColorWhite,
          ),
        ],
      ),
    );
  }
}
