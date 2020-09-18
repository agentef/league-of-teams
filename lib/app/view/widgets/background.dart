import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Background extends StatelessWidget {
  Background(this.widget);

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [

          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2,
                    fit: BoxFit.cover,
                    image: AssetImage("background/spirit-blossom-kindred.jpg")),
                Image(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 2,
                    fit: BoxFit.cover,
                    image: AssetImage("background/spirit-blossom-yasuo.jpg"))
              ]),
          Center(
            child: ConstrainedBox(

              constraints: BoxConstraints(
                  minHeight: 900, minWidth: 1400, maxWidth: 1800
              ),
              child: Container(
                color: Colors.blueGrey,
                height: MediaQuery.of(context).size.height * 0.95,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Container(
                  color: Colors.white70,
                  child: widget,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
