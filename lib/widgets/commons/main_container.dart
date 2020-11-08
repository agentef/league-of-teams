import 'package:flutter/material.dart';
import 'package:league_team_analytics/configuration/constants.dart';
import 'package:league_team_analytics/screens/home/homePage.dart';

import 'background.dart';

class MainContainer extends StatelessWidget {
  final Widget widget;

  MainContainer(this.widget);

  @override
  Widget build(BuildContext context) {
    final mainContainer = Scaffold(
      appBar: AppBar(
        title: MaterialButton(
          onPressed: () => Navigator.pushReplacement(context, PageRouteBuilder(
            pageBuilder: (_, __, ___) => HomePage(),
            transitionDuration: Duration(seconds: 0),
          ),),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(Constants.logoUrl, width: 40, height: 40),
              ),
              Text(
                Constants.TITLE,
                style: TextStyle(color: Colors.white70, fontSize: 24, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        actions: [],
      ),
      body: Row(
        children: [
          // SideMenu(),
          Expanded(
            child: Container(
              color: Colors.black12,
              child: widget,
            ),
          )
        ],
      ),
    );

    return Background(mainContainer);
  }
}
