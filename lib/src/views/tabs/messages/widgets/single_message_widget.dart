import 'package:flutter/material.dart';

import '../../../../../config/theme/colors.dart';
import '../../../../../config/theme/typography.dart';
import '../../../../../gen/assets.gen.dart';
import '../models/thread.dart';

class SingleMessageWidget extends StatelessWidget {
  const SingleMessageWidget({super.key, required this.thread});
  final Thread thread;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: thread.isSender
          ? const EdgeInsets.only(left: 56)
          : const EdgeInsets.only(right: 56),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: thread.isSender ? kColorGrey20 : kColorBlue20,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Texty.smallSemiBold(thread.name),
            Text(thread.content),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (thread.isRead) ...[
                  Assets.icons.showMessageIsRead.svg(),
                  const SizedBox(width: 2),
                  Texty.nano('Read'),
                ] else ...[
                  Assets.icons.mailClosed.svg(color: kColorGrey60),
                  const SizedBox(width: 2),
                  Texty.nano('Delivered'),
                ],
                const Spacer(),
                Texty.micro(thread.createdAt.toString(), color: kColorGrey60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
