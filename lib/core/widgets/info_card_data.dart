import 'package:flutter/material.dart';
import 'package:strike_the_match/theme/pallete.dart';

class InfoCardData extends StatelessWidget {
  const InfoCardData(
      {Key? key,
      required this.infoCardWidgets,
      this.hasTitle = false,
      this.topPadding = 25,
      this.bottomPadding = 25})
      : super(key: key);
  final List<Widget> infoCardWidgets;
  final bool hasTitle;
  final double topPadding;
  final double bottomPadding;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, topPadding, 25, bottomPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (hasTitle == true)
                Text(
                  'data',
                  style: TextStyle(color: Colors.black),
                ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Theme(
                      data: theme.copyWith(
                        dividerColor: Colors.red,
                      ),
                      child: VerticalDivider(
                        thickness: 2,
                        color: Palette.primaryBlue,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Form(
                        child: Column(
                          children: infoCardWidgets,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
