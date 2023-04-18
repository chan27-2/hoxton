import 'package:capital_app/utils/assets.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.asset(
            MyAssets.user,
            fit: BoxFit.fill,
            width: size.width * .1,
            height: size.width * .1,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 14,
                          color: MyThemePalette.blackColor,
                        ),
                      ),
                      Text(
                        "80000 AED",
                        style: TextStyle(
                          fontSize: 14,
                          color: MyThemePalette.blackColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "United Kingdom",
                        style: TextStyle(
                          fontSize: 12,
                          color: MyThemePalette.blackColor.withOpacity(.3),
                        ),
                      ),
                      Text(
                        "11 Aug 2021",
                        style: TextStyle(
                          fontSize: 12,
                          color: MyThemePalette.blackColor.withOpacity(.3),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              MyAssets.progress,
              fit: BoxFit.fill,
              width: 15,
            ),
          ),
        ],
      ),
    );
  }
}
