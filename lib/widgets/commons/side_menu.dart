import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width / 10,
      constraints: BoxConstraints(minWidth: 280),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          menuListTile(context, "Home", Icon(Icons.house), ModalRoute.withName('/')),
          Divider(),
          menuListTile(context, "Pick a Comp", Image.network('https://drive.google.com/file/d/1xvYHOBG2Nv-kv1tpbl8Bvi-VkLk2IiIg&export=download', height: 24,), ModalRoute.withName('/pick-a-comp'))
        ],
      ),
    );
  }

  Widget menuListTile(context, title, icon, route) {
    var color = Colors.blueGrey;
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: ListTile(
        focusColor: Colors.transparent,
        selectedTileColor: Colors.transparent,
        title: Text(
          title,
          style: TextStyle(color: color),
        ),
        leading: icon,
        trailing: Icon(
          Icons.arrow_forward,
          color: color,
        ),
        onTap: () => Navigator.push(context, route),
      ),
    );
  }
}
