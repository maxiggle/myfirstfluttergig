import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/typography.dart';
import '../../../../gen/assets.gen.dart';

class ContentScreen extends StatefulWidget {
  const ContentScreen({Key? key}) : super(key: key);

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  PageController controller =
      PageController(initialPage: 0, viewportFraction: 1.1);
  int currentIndex = 0;

  List<Widget> items = [
    const SlideCard(),
    const SlideCard(),
    const SlideCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24.7),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              height: 39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kColorWhite,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    color: const Color(0xff636f88).withOpacity(0.4),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: kColorGrey70),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(
                    text: 'All Contents',
                    height: 27,
                  ),
                  Tab(
                    text: 'Favorites',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: PageView.builder(
                            itemCount: items.length,
                            controller: controller,
                            onPageChanged: (value) {
                              setState(() {
                                currentIndex = value;
                              });
                            },
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 26),
                                child: items[index],
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      IndicatorWidget(
                        currentIndex: currentIndex,
                        length: items.length - 1,
                      ),
                      const Expanded(child: SizedBox()),
                    ],
                  ),
                  const Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IndicatorWidget extends StatelessWidget {
  const IndicatorWidget(
      {Key? key, required this.currentIndex, required this.length})
      : super(key: key);

  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i <= length; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            height: 8,
            width: 8,
            decoration: BoxDecoration(
                color: currentIndex == i ? kColorBlue : kColorGrey30,
                borderRadius: BorderRadius.circular(50)),
          ),
      ],
    );
  }
}

class SlideCard extends StatelessWidget {
  const SlideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            color: kColorGrey30,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Assets.dev.managerAvatar.image(),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Texty.smallSemiBold('John Green'),
                  Texty.small('Brand Logo'),
                ],
              ),
              const Spacer(),
              Texty.small('22/10/22 5:15 PM'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(child: Assets.dev.towerimage.image(fit: BoxFit.fitWidth)),
          const SizedBox(
            height: 10,
          ),
          Texty.bodyBold('Content Title'),
          const SizedBox(
            height: 4,
          ),
          Texty.small('Lorem ipsum dolor sit amet. Lorem ipsum'),
          Assets.dev.favorite.svg()
        ],
      ),
    );
  }
}
