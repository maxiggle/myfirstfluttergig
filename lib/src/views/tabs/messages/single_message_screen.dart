import 'package:flutter/material.dart';
import '../../../../config/theme/buttons.dart';
import '../../../../config/theme/colors.dart';
import '../../../../config/theme/typography.dart';
import '../../../../gen/assets.gen.dart';
import '../../../global_widgets/app_back_button.dart';

import 'models/thread.dart';
import 'widgets/single_message_widget.dart';

class SingleMessageScreen extends StatefulWidget {
  const SingleMessageScreen({super.key});

  @override
  State<SingleMessageScreen> createState() => _SingleMessageScreenState();
}

class _SingleMessageScreenState extends State<SingleMessageScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBackButton(),
        title: Row(
          children: [
            CircleAvatar(
              radius: 16,
              backgroundImage: Assets.dev.userAvatar.provider(),
            ),
            const SizedBox(width: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texty.smallSemiBold('James Brown'),
                const SizedBox(height: 2),
                Texty.nano('Brand Manager', color: kColorGrey60),
              ],
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          ListView.separated(
            controller: _scrollController,
            itemCount: threads.length + 1,
            // reverse: true,
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
              bottom: 100,
            ),
            itemBuilder: (_, ix) {
              if (ix == 0) return Texty.h4('A sample subject');

              return SingleMessageWidget(thread: threads[ix - 1]);
            },
            separatorBuilder: (_, ix) => const SizedBox(height: 20),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              child: const SendMessageInput(),
            ),
          ),
        ],
      ),
    );
  }
}

class SendMessageInput extends StatelessWidget {
  const SendMessageInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.all(0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        side: BorderSide(color: kColorGrey40, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Expanded(
              child: TextField(
                maxLines: 5,
                minLines: 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type your reply here',
                  contentPadding: EdgeInsets.symmetric(horizontal: 2),
                ),
              ),
            ),
            const SizedBox(width: 4),
            SendMessageButton(onPressed: () {})
          ],
        ),
      ),
    );
  }
}
