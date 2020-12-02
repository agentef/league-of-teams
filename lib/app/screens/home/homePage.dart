import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:league_team_analytics/app/commons/colors/colors.dart';
import 'package:league_team_analytics/app/commons/controller/preferences_controller.dart';
import 'package:league_team_analytics/app/commons/translations/messages_enum.dart';
import 'package:league_team_analytics/app/commons/widgets/main_container.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/default_header.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/default_text_field.dart';
import 'package:league_team_analytics/app/commons/widgets/text_style/image.dart';

class HomePage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();
  final _summonerNamesFocusNode = FocusNode();
  final _preferencesController = PreferencesController();
  final _summonersController = TextEditingController();
  final _daysFilterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final mainPageViewController = Center(
      child: Container(
        constraints: BoxConstraints(minWidth: 600, minHeight: 400),
        height: height * 0.4,
        width: width * 0.3,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
          child: Form(
            key: _formKey,
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: Images.getLogo(size: 64)),
                  SizedBox(width: 24),
                  Text("Lol Teams", style: TextStyles.DefaultTitleTextStyle)
                ],
              ),
              SizedBox(height: 80),
              Text(MessagesEnum.HP_insert_names.get.tr, style: TextStyles.DefaultHeaderTextStyle, textAlign: TextAlign.center),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))), color: CustomColors.appColorScheme.background),
                child: TextFormField(
                  validator: (value) {
                    if (!value.contains(",")) return MessagesEnum.HP_must_contain_2.get.tr;
                    return null;
                  },
                  controller: _summonersController,
                  style: TextFieldStyles.defaultTextFieldStyle,
                  textAlign: TextAlign.center,
                  focusNode: _summonerNamesFocusNode,
                  onFieldSubmitted: (value) => searchMatches()
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    color: CustomColors.appColorScheme.error.withOpacity(0.2),
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(MessagesEnum.HP_days_filter_message1.get.tr, style: TextStyles.DefaultHeaderTextStyle),
                          Container(
                            alignment: Alignment.center,
                            height: 32,
                            width: 40,
                            child: TextFormField(
                              controller: _daysFilterController,
                              style: TextStyles.DefaultHeaderTextStyle,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration.collapsed(hintText: '30'),
                              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
                              keyboardType: TextInputType.number,
                              onFieldSubmitted: (value) => searchMatches()
                            ),
                          ),
                          Text(MessagesEnum.HP_days_filter_message2.get.tr, style: TextStyles.DefaultHeaderTextStyle)
                        ],
                      ),
                    ),
                  )],
              ),
              Container(
                width: 120,
                height: 48,
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: CustomColors.appColorScheme.primary,
                  child: Text(MessagesEnum.go.get.tr, style: TextStyle(color: CustomColors.appColorScheme.onPrimary)),
                  onPressed: () => searchMatches()
                ),
              )
            ]),
          ),
        ),
      ),
    );


    return MainContainer(mainPageViewController);
  }
    searchMatches() {
      final days = _daysFilterController.value.text.isNullOrBlank ? 30 : _daysFilterController.value.text;
      if (_formKey.currentState.validate()) Get.offNamed('/stats?summoners=${_summonersController.value.text}&region=${_preferencesController.region.value}&days=$days');
    }
}
