import 'package:capital_app/ui/components/transaction_tile.dart';
import 'package:capital_app/ui/routes.dart';
import 'package:capital_app/utils/constants.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';

class RecentTxnSection extends StatelessWidget {
  const RecentTxnSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Recent Transactions".toUpperCase(),
                style: const TextStyle(
                    color: MyThemePalette.blackColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w800),
              ),
              GestureDetector(
                onTap: () async {
                  navigatorKey.currentState!.pushNamed(RouteNames.savedCards);
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: MyThemePalette.blackColor.withOpacity(.39),
                        borderRadius: BorderRadius.circular(9)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: const Text("MORE",
                        style: TextStyle(
                            color: MyThemePalette.whiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w800))),
              )
            ],
          ),
          const SizedBox(height: 20),
          for (int i = 0; i < 5; i++) ...[
            const TransactionTile(),
          ],
        ],
      ),
    );
  }
}
