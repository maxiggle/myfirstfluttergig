import 'package:flutter/material.dart';

import '../../../../../config/theme/colors.dart';
import '../../../../../config/theme/typography.dart';
import '../../../../../gen/assets.gen.dart';
import '../models/chat_message.dart';

class MessageListItem extends StatelessWidget {
  final ChatMessage message;

  const MessageListItem({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, bottom: 12),
      child: Align(
        alignment: (message.read ? Alignment.topLeft : Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: (message.read ? kColorWhite : kColorBlue10),
            border: message.read
                ? Border.all(style: BorderStyle.solid, color: kColorGrey30)
                : Border.all(style: BorderStyle.solid, color: kColorBlue20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12,
                    backgroundImage: Assets.dev.managerAvatar.provider(),
                  ),
                  const SizedBox(width: 4),
                  Texty.smallSemiBold(
                    message.type == MessageTypes.reciever
                        ? 'John Green'
                        : 'You',
                  ),
                ],
              ),
              Texty.body(message.content),
              const SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: message.read ? kColorGrey30 : kColorBlue20,
                    child: message.read
                        ? Assets.icons.mailOpened.svg()
                        : Assets.icons.mailClosed.svg(),
                  ),
                  const Spacer(),
                  Texty.micro('22/10/22', color: kColorGrey60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: CircleAvatar(
                      backgroundColor: kColorGrey50,
                      radius: 1.5,
                    ),
                  ),
                  Texty.micro('5:15 PM', color: kColorGrey60),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
