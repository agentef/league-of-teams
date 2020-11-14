import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'text_style/default_header.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('please wait'.tr, style: TextStyles.DefaultHeaderTextStyle,),
        SizedBox(height: 30),
        Container(
          child: CircularProgressIndicator(),
        ),
      ],
    ),);

  }
}
