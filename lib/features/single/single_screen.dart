import 'dart:math';

import 'package:flutter/material.dart';
import 'package:strike_the_match/core/constants.dart';
import 'package:strike_the_match/core/widgets/bottom_nav_bar.dart';
import 'package:strike_the_match/core/widgets/info_button.dart';
import 'package:strike_the_match/features/single/single.dart';
import 'package:strike_the_match/theme/pallete.dart';

const Single single = Single(
    firstName: 'Chaim  Dov',
    lastName: 'Goldberg',
    isMale: true,
    phoneNumber: '(667) 364-9196',
    age: 23,
    height: 76,
    location: 'lakewood NJ');

class SingleScreen extends StatelessWidget {
  const SingleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              const CircleAvatar(
                child: Placeholder(),
              ),
              Text(
                single.firstName + ' ' + single.lastName,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '\u{1F4CD} ${single.location}',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InfoButton(
                      onPressed: () {},
                      buttonText: 'Age: ${single.age.toString()}',
                      buttonWidth: kSingleButtonWidth,
                      buttonHeight: kSingleInfoButtonHeight),
                  InfoButton(
                      onPressed: () {},
                      buttonText: 'Height: ${single.height.toString()}',
                      buttonWidth: kSingleButtonWidth,
                      buttonHeight: kSingleInfoButtonHeight),
                  InfoButton(
                      onPressed: () {},
                      buttonText: 'Resume',
                      buttonWidth: kSingleButtonWidth,
                      buttonHeight: kSingleInfoButtonHeight)
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
