import 'package:flutter/material.dart';

import 'text_style/default_header.dart';

class ErrorScreen extends StatefulWidget {
  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Error!", style: TextStyles.DefaultHeaderTextStyle),
          SizedBox(height: 30),
          Icon(Icons.error_outline, color: Colors.red, size: 48),
        ],
      ),
    );
  }
}
