import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/image.dart';
import 'package:league_team_analytics/configuration/constants.dart';

import 'background.dart';

class MainContainer extends StatelessWidget {
  final Widget widget;

  MainContainer(this.widget);

  @override
  Widget build(BuildContext context) {
    return Background(
      Scaffold(
        appBar: AppBar(
          title: MaterialButton(
            onPressed: () => Get.offNamed('/'),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: const EdgeInsets.all(8.0), child: Images.getLogo(size: 40)),
                Text(Constants.TITLE, style: TextStyle(color: CustomColors.antiFlashWhite, fontSize: 24, fontWeight: FontWeight.w500))
              ],
            ),
          ),
        ),
        body: Row(
          children: [
            // SideMenu(),
            Expanded(child: widget)
          ],
        ),
      ),
    );
  }
}
