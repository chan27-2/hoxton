import 'package:capital_app/ui/components/transaction_tile.dart';
import 'package:capital_app/ui/routes.dart';
import 'package:capital_app/utils/assets.dart';
import 'package:capital_app/utils/constants.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: MyThemePalette.backgroundDarkColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text.rich(
                                style: TextStyle(fontSize: 20),
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Hola,',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: ' Michael'),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "Te tenemos excelentes noticias para ti",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            MyAssets.notificationIcon,
                            color: MyThemePalette.whiteColor,
                            width: 16,
                            semanticsLabel: 'Notifications',
                          ),
                          SizedBox(width: size.width * .05),
                          CircleAvatar(
                            radius: 10,
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * .04),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "\$56,271.68",
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "+\$9,736",
                                style: TextStyle(fontSize: 15),
                              ),
                              SizedBox(width: 12),
                              Text(
                                "2.3%",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: MyThemePalette.greenColor),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "ACCOUNT BALANCE",
                            style: TextStyle(
                              fontSize: 12,
                              color: MyThemePalette.whiteColor.withOpacity(.44),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * .04),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Following",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: MyThemePalette.whiteColor
                                      .withOpacity(.44),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 1,
                            height: size.height * 0.04,
                            color: Colors.white,
                          ),
                          Column(
                            children: [
                              Text(
                                "36",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Transactions",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: MyThemePalette.whiteColor
                                      .withOpacity(.44),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            width: 1,
                            height: size.height * 0.04,
                            color: Colors.white,
                          ),
                          Column(
                            children: [
                              Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Bills",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: MyThemePalette.whiteColor
                                      .withOpacity(.44),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Performance Chart".toUpperCase(),
                        style: TextStyle(
                            color: MyThemePalette.blackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: MyThemePalette.blackColor.withOpacity(.39),
                              borderRadius: BorderRadius.circular(9)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          child: Text("MORE",
                              style: TextStyle(
                                  color: MyThemePalette.whiteColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800)))
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top USERS FROM YOUR COMMUNITY".toUpperCase(),
                    style: TextStyle(
                        color: MyThemePalette.blackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w800),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    constraints: BoxConstraints(maxHeight: size.height * .12),
                    child: ListView.builder(
                        clipBehavior: Clip.none,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (c, i) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 18.0, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: size.height * .12 * .3,
                                  backgroundImage: AssetImage(
                                      MyAssets.getSampleUserBasedOnIndex(i)),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Following",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: MyThemePalette.blackColor,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Recent Transactions".toUpperCase(),
                        style: TextStyle(
                            color: MyThemePalette.blackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigatorKey.currentState!
                              .pushNamed(RouteNames.savedCards);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color:
                                    MyThemePalette.blackColor.withOpacity(.39),
                                borderRadius: BorderRadius.circular(9)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Text("MORE",
                                style: TextStyle(
                                    color: MyThemePalette.whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800))),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                  SizedBox(height: 10),
                  TransactionTile(),
                  TransactionTile(),
                  TransactionTile(),
                  TransactionTile(),
                  TransactionTile(),
                ],
              ),
            ),
            SafeArea(
              top: false,
              bottom: true,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Financial Goals".toUpperCase(),
                      style: TextStyle(
                          color: MyThemePalette.blackColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "XX of total XX",
                          style: TextStyle(
                            color: MyThemePalette.greyColor,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        LinearProgressIndicator(
                          value: .3,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xff147AD6)),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "XX of total XX",
                          style: TextStyle(
                            color: MyThemePalette.greyColor,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        LinearProgressIndicator(
                          value: .3,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xffEC6666)),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "XX of total XX",
                          style: TextStyle(
                            color: MyThemePalette.greyColor,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: LinearProgressIndicator(
                            value: .3,
                            backgroundColor:
                                MyThemePalette.greyColor.withOpacity(.3),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff79D2DE)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
