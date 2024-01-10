

import 'package:flutter/material.dart';
import 'package:your_notes_app/graphic/app/app_header.dart';
import 'package:your_notes_app/static/app_colors.dart';
import 'package:your_notes_app/static/numeric.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({Key? key, required this.body, this.top, this.onGearIconTap, this.onLogoIconTap, this.floatingActionButton}) : super(key: key);

  final Widget body;
  final Widget? top;
  final Function? onGearIconTap;
  final Function? onLogoIconTap;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: floatingActionButton,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.simpleBlack,
                AppColors.primaryDark,
              ]
            )
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: Numeric.topHeight,
                child: top ?? AppHeader(
                  onGearIconTap: onGearIconTap,
                  onLogoIconTap: onLogoIconTap,
                ),
              ),
              Expanded(child: body)
            ],
          ),
        ),
      ),
    );
  }
}
