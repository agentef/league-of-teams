import 'package:flutter/material.dart';
import 'package:league_team_analytics/widgets/commons/text_style/default_header.dart';

class ErrorScreen extends StatefulWidget {
  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Error!", style: TextStyles.DefaultHeaderTextStyle,),
        SizedBox(height: 30),
        Container(
          child: Icon(Icons.error_outline, color: Colors.red, size: 48,),
        ),
      ],
    ),);

  }
}
