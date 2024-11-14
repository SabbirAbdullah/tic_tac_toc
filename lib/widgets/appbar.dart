import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';
import '../utils/config.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 6),
        child: Column(
          children: [
            const Text(Constants.appTitle,
                style: TextStyle(
                    color: Constants.whiteColor,
                    fontSize: 36,
                    height: 0.5,
                    fontFamily: "DancingScript",
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2)),


          ],
        ),
      ),
    );
  }
}
