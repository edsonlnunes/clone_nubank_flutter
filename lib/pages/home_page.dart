import 'package:flutter/material.dart';
import 'package:nubank_clone/themes/colors.dart';
import 'package:nubank_clone/widgets/account_info.dart';
import 'package:nubank_clone/widgets/card_info.dart';
import 'package:nubank_clone/widgets/custom_bottom_app_bar.dart';
import 'package:nubank_clone/widgets/person_identification.dart';
import 'package:nubank_clone/widgets/tab_option.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: PersonIdentification(),
        bottom: CustomBottomAppBar(
          isExpanded: _isExpanded,
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          bottom: 20,
          top: 20,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: AccountInfo(isExpanded: _isExpanded),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: <Widget>[
                  CardInfo(),
                  SizedBox(
                    height: 15,
                  ),
                  CardInfo(),
                  SizedBox(
                    height: 15,
                  ),
                  CardInfo(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TabOption(),
          ],
        ),
      ),
    );
  }
}
