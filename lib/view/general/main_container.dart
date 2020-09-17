import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset('/league-of'),
            )
          ],
        ),
        actions: [

        ],
      ),
    );
  }
}
