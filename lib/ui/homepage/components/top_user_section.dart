import 'package:capital_app/bloc/user/user_bloc.dart';
import 'package:capital_app/utils/assets.dart';
import 'package:capital_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopUsersSection extends StatelessWidget {
  const TopUsersSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top USERS FROM YOUR COMMUNITY".toUpperCase(),
            style: const TextStyle(
                color: MyThemePalette.blackColor,
                fontSize: 12,
                fontWeight: FontWeight.w800),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            constraints: BoxConstraints(maxHeight: size.height * .12),
            child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
              if (state is! GotUserNames) {
                return const Center(
                    child: Text("LOADING...",
                        style: TextStyle(
                            color: MyThemePalette.blackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w800)));
              }
              return ListView.builder(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  itemCount: state.allUserNames.length,
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
                          const SizedBox(height: 10),
                          Text(
                            state.allUserNames[i],
                            style: const TextStyle(
                              fontSize: 12,
                              color: MyThemePalette.blackColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }),
          )
        ],
      ),
    );
  }
}
