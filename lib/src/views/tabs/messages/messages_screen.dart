import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../config/theme/colors.dart';
import '../../../../config/theme/typography.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../routes/router.gr.dart';
import 'dummy_text.dart';
import 'widgets/message_list_item.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24.72),
          child: Column(
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Texty.h4('Messages'),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Texty.smallSemiBold('2 Unread', color: kColorBlue),
                  )
                ],
              ),
              const SizedBox(height: 16.5),
              ListView.builder(
                itemCount: messages.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).push(
                        const SingleMessageScreenRoute(),
                      );
                    },
                    child: MessageListItem(message: messages[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            AutoRouter.of(context).push(const NewMessageScreenRoute());
          },
          child: Assets.icons.newMessage.svg()),
    );
  }
}
