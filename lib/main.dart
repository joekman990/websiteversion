import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:strike_the_match/features/add_names/add_name_screen.dart';
import 'package:strike_the_match/features/single/single_screen.dart';
import 'package:strike_the_match/strike_the_match.dart';
import 'package:strike_the_match/theme/custom_theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strike The Match',
      home: AddNameScreen(),
      theme: CustomTheme.lightTheme(context),
    );
  }
}
