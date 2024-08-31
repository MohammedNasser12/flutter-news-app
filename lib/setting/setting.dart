import 'dart:math';

import 'package:flutter/cupertino.dart';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Setting extends StatelessWidget {
  List<String> languge = ["English", "Arabic"];
  Setting({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("assets/images/patternbackground.png"))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Setting",
              style: theme.textTheme.titleMedium,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Languge : ",
                  style: theme.textTheme.titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomDropdown<String>(
                  hintText: 'Select Languge',
                  items: languge,
                  initialItem: languge[0],
                  onChanged: (value) {
                    // log('changing value to: $value');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
