import 'package:capital_app/utils/assets.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderHomePage extends StatelessWidget {
  const HeaderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
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
                          style: TextStyle(fontWeight: FontWeight.bold),
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
              const Spacer(),
              SvgPicture.asset(
                MyAssets.notificationIcon,
                color: MyThemePalette.whiteColor,
                width: 16,
                semanticsLabel: 'Notifications',
              ),
              SizedBox(width: size.width * .05),
              const CircleAvatar(
                radius: 10,
              ),
            ],
          ),
          SizedBox(height: size.height * .04),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "\$56,271.68",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "+\$9,736",
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "2.3%",
                    style: TextStyle(
                        fontSize: 15, color: MyThemePalette.greenColor),
                  ),
                ],
              ),
              const SizedBox(height: 10),
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
                  const Text(
                    "12",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Following",
                    style: TextStyle(
                      fontSize: 12,
                      color: MyThemePalette.whiteColor.withOpacity(.44),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 1,
                height: size.height * 0.04,
                color: Colors.white,
              ),
              Column(
                children: [
                  const Text(
                    "36",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Transactions",
                    style: TextStyle(
                      fontSize: 12,
                      color: MyThemePalette.whiteColor.withOpacity(.44),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 1,
                height: size.height * 0.04,
                color: Colors.white,
              ),
              Column(
                children: [
                  const Text(
                    "4",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Bills",
                    style: TextStyle(
                      fontSize: 12,
                      color: MyThemePalette.whiteColor.withOpacity(.44),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
