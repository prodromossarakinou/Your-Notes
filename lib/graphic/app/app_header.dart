import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:your_notes_app/static/app_colors.dart';
import 'package:your_notes_app/static/image/logo_image.dart';
import 'package:your_notes_app/static/numeric.dart';
import 'package:your_notes_app/util/extension/function_extension.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
    this.onGearIconTap,
    this.onLogoIconTap,
  }) : super(key: key);

  final Function? onGearIconTap;
  final Function? onLogoIconTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Numeric.outerPadding),
      child: Row(
        children: [
          GestureDetector(
            onTap: onLogoIconTap.callOrNull,
            child: Image.asset(
              LogoImage.logoPrimaryLight,
              height: Numeric.topIconsSize,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onGearIconTap.callOrNull,
            child: Icon(
              Icons.settings,
              // color: AppColors.primaryLight,
              size: Numeric.topIconsSize,
            ),
          ),
        ],
      ),
    );
  }
}
