import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Background extends StatelessWidget {
  Background(this.viewContainer);

  final Widget viewContainer;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
        alignment: Alignment.center,
        child: Stack(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                  height: height,
                  width: width / 2,
                  fit: BoxFit.cover,
                  image: NetworkImage("https://drive.google.com/u/0/uc?id=15hKVb5x5_1MOfXa3WIgXEvTaELb8BeNo&export=download")),
              Image(
                  height: height,
                  width: width / 2,
                  fit: BoxFit.cover,
                  image: NetworkImage("https://drive.google.com/u/0/uc?id=170nCdZqsrZlFHEduNuTCv7ZP9W8gCZta&export=download"))
            ],
          ),
          Center(
              child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 900, minWidth: 1200, maxWidth: 1800),
                  child: Container(height: height * 0.95, width: width * 0.6, child: viewContainer)))
        ]));
  }
}
