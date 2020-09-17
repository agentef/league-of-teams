import 'package:flutter/material.dart';
import 'package:league_team_analytics/view/general/background.dart';

class MainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
          Scaffold(
        appBar: AppBar(
          title: MaterialButton(
            onPressed: () => Navigator.pushNamed(context, '/'),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('logo.png', width: 40, height: 40),
                ),
                Text("League of Teams", style: TextStyle(color: Colors.white70, fontSize: 24, fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          actions: [],
        ),
      )
    );
  }
}
