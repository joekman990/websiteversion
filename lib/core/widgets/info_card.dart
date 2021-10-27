import 'package:flutter/material.dart';
import 'package:strike_the_match/theme/pallete.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.isExpanded,
    required this.title,
    required this.leadingIcon,
    required this.cardWidgets,
    this.hasTitle = false,
    this.sectionTitle = '',
    // required this.boxSize,
  }) : super(key: key);

  final bool isExpanded;
  final String title;
  final Icon leadingIcon;
  final List<Widget> cardWidgets;
  final bool hasTitle;
  final String sectionTitle;
  // final double boxSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Material(
            shadowColor: Colors.transparent,
            elevation: 0.0,
            child: ExpansionTile(
              title: Text(title),
              // tilePadding: EdgeInsets.fromLTRB(),
              leading: leadingIcon,
              children: cardWidgets,
              // expandedCrossAxisAlignment: CrossAxisAlignment.center,
              childrenPadding: const EdgeInsets.all(25),
              textColor: Palette.primaryBlue,
              collapsedTextColor: Palette.primaryBlue,
              collapsedIconColor: Palette.primaryBlue,
              backgroundColor: Palette.lightBlueGrey,
              collapsedBackgroundColor: Palette.lightBlueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
