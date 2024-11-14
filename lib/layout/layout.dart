import 'package:flutter/material.dart';


import '../constants/constant.dart';
import '../utils/config.dart';
import '../widgets/app_footer.dart';
import '../widgets/appbar.dart';

class CustomLayout extends StatelessWidget {
  final Widget child;

  const CustomLayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Constants.backgroundColor,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const AppBarWidget(),
              ),
              child,
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 10),
                child: const AppFooterWidget(),
              ),
            ],
          ),
        ),

    );
  }
}
