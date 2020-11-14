import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/controller/preferences_controller.dart';
import 'package:league_team_analytics/app/commons/translations/messages_enum.dart';
import 'package:league_team_analytics/app/commons/widgets/main_container.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/default_header.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/default_text_field.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/image.dart';
import 'package:league_team_analytics/bloc_services/storage_service.dart';

class HomePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final _summonerNamesFocusNode = FocusNode();
  final _storageService = StorageService();
  final _preferencesController = PreferencesController();
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
            Text(MessagesEnum.insert_names.get.tr, style: TextStyles.DefaultHeaderTextStyle, textAlign: TextAlign.center,),
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
                style: TextFieldStyles.defaultTextFieldStyle,
                textAlign: TextAlign.center,
                focusNode: _summonerNamesFocusNode,
                onFieldSubmitted: (value) {
                  if (_formKey.currentState.validate()) Get.offNamed('/stats?summoners=${_summonersController.value.text}&region=${_preferencesController.region.value}&matches=');
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
                  if (_formKey.currentState.validate()) Get.offNamed('/stats?summoners=${_summonersController.value.text}&region=${_preferencesController.region.value}&matches=}');
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
