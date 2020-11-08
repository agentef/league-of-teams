import 'package:flutter/material.dart';
import 'package:league_team_analytics/screens/statistics/statisticsPage.dart';
import 'file:///E:/Dev/League%20Team%20Analytics/league_team_analytics/lib/bloc_services/storage_service.dart';
import 'package:league_team_analytics/widgets/commons/main_container.dart';
import 'package:league_team_analytics/widgets/commons/text_style/default_header.dart';
import 'package:league_team_analytics/widgets/commons/text_style/default_text_field.dart';
import 'package:league_team_analytics/widgets/commons/text_style/image.dart';

class HomePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final _summonerNamesFocusNode = FocusNode();
  final _storageService = StorageService();

  final _summonersController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final mainPageViewController = Center(
      child: Container(
        constraints: BoxConstraints(minWidth: 600, minHeight: 400),
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(60, 35))),
            color: Colors.white),
        height: height * 0.4,
        width: width * 0.3,
        child: Form(
          key: _formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(child: Images.getLogo(64)),
                Text("League of Teams", style: TextStyles.DefaultTitleTextStyle)
              ],
            ),
            SizedBox(height: 80),
            Text('Insira o nome dos invocadores separados por vírgula', style: TextStyles.DefaultHeaderTextStyle, textAlign: TextAlign.center,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              padding: EdgeInsets.all(12),
              decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(10, 15))), color: Colors.black12),
              child: TextFormField(
                validator: (value) {
                  if (!value.contains(",")) return 'Must contain at least two summoner names.';
                  return null;
                },
                controller: _summonersController,
                style: TextFieldStyles.DefaultTextFieldStyle,
                textAlign: TextAlign.center,
                focusNode: _summonerNamesFocusNode,
                onFieldSubmitted: (value) {
                  if (_formKey.currentState.validate()) {
                    _storageService.saveSummoners(value);
                    Navigator.pushReplacement(context, PageRouteBuilder(
                        pageBuilder: (_, __, ___) => StatisticsPage(),
                        transitionDuration: Duration(seconds: 0)));
                  }
                }
              ),
            ),
            Container(
              width: 120,
              height: 48,
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                color: Colors.teal,
                child: Text("Go", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _storageService.saveSummoners(_summonersController.text);
                    Navigator.pushReplacement(context, PageRouteBuilder(
                        pageBuilder: (_, __, ___) => StatisticsPage(),
                        transitionDuration: Duration(seconds: 0)));
                  }
                }
              ),
            )
          ]),
        ),
      ),
    );

    return MainContainer(mainPageViewController);
  }
}
