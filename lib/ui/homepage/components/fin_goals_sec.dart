import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';

class FinGoalsSection extends StatelessWidget {
  const FinGoalsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Financial Goals".toUpperCase(),
            style: const TextStyle(
                color: MyThemePalette.blackColor,
                fontSize: 12,
                fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "XX of total XX",
                style: TextStyle(
                  color: MyThemePalette.greyColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              const LinearProgressIndicator(
                value: .3,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff147AD6)),
              )
            ],
          ),
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "XX of total XX",
                style: TextStyle(
                  color: MyThemePalette.greyColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              const LinearProgressIndicator(
                value: .3,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xffEC6666)),
              )
            ],
          ),
          const SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "XX of total XX",
                style: TextStyle(
                  color: MyThemePalette.greyColor,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                child: LinearProgressIndicator(
                  value: .3,
                  backgroundColor: MyThemePalette.greyColor.withOpacity(.3),
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Color(0xff79D2DE)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
