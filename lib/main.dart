import 'package:flutter/material.dart';
import 'package:your_notes_app/graphic/app/app_scaffold.dart';
import 'package:your_notes_app/static/app_colors.dart';
import 'package:your_notes_app/static/app_const.dart';
import 'package:your_notes_app/static/numeric.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your-Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.primary,
          colorScheme: ColorScheme(
            onPrimary: Colors.white,
            brightness: Brightness.dark,
            //Text primary color!!
            primary: Colors.white,
            onBackground: Colors.white,
            onError: Colors.white,
            secondary: AppColors.secondary,
            onSecondary: Colors.white,
            error: AppColors.secondary,
            background: AppColors.simpleBlack,
            surface: AppColors.simpleBlack,
            onSurface: Colors.white,
            onPrimaryContainer: Colors.white,
            onInverseSurface: Colors.white,
          ),
          iconTheme: IconThemeData(
            color: AppColors.primaryLight,
          ),
          fontFamily: AppConst.fontFamily,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: Numeric.floatingButtonInnerHorizontalPadding,
                      vertical: Numeric.floatingButtonInnerVerticalPadding),
                  textStyle: TextStyle(
                    fontFamily: AppConst.fontFamily,
                    fontSize: Numeric.bodyTitleFontSize,
                  ),
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Numeric.appBorderRadius),
                  )))),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Text(
          'You haven\'t added any notes yet.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: Numeric.bodyTitleFontSize,
            color: AppColors.primaryLight,
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Create Note',
          style: TextStyle(
            // color: Colors.white,
          ),
        ),
      ),
    );
  }
}
