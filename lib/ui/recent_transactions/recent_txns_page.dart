import 'package:capital_app/ui/components/transaction_tile.dart';
import 'package:capital_app/utils/assets.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RecentTxns extends StatefulWidget {
  const RecentTxns({Key? key}) : super(key: key);

  @override
  State<RecentTxns> createState() => _RecentTxnsState();
}

class _RecentTxnsState extends State<RecentTxns> with TickerProviderStateMixin {
  late TabController tabController;
  PageController pageController = PageController(
    viewportFraction: 0.8,
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "My saved cards",
          style: TextStyle(
              fontSize: 20,
              color: MyThemePalette.blackColor,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              MyAssets.menu,
              width: 14,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: PageView(
              controller: pageController,
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  MyAssets.card1,
                ),
                Image.asset(
                  MyAssets.card2,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SmoothPageIndicator(
            controller: pageController,
            count: 2,
            effect: const ExpandingDotsEffect(
                dotHeight: 9, dotWidth: 10, expansionFactor: 2.5),
          ),
          SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TabBar(
                    isScrollable: true,
                    controller: tabController,
                    indicatorWeight: 5,
                    indicatorColor: Color(0xff707070),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: MyThemePalette.blackColor,
                    tabs: [
                      Tab(text: "Menu Title 1"),
                      Tab(text: "Menu Title 2"),
                      Tab(text: "Menu Title 3"),
                      Tab(text: "Menu Title 4"),
                      Tab(text: "Menu Title 5"),
                    ],
                  ),
                ),
                Divider(
                  height: 0,
                  thickness: 1,
                  indent: 27,
                ),
                Flexible(
                  child: TabBarView(controller: tabController, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: ListView(
                        children: [
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                          TransactionTile(),
                        ],
                      ),
                    ),
                    Text("sdkjf"),
                    Text("sdkjf"),
                    Text("sdkjf"),
                    Text("sdkjf"),
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
