import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  const InfoButton(
      {Key? key,
      required this.onPressed,
      required this.buttonText,
      required this.buttonWidth,
      required this.buttonHeight,
      this.isEmpty = true})
      : super(key: key);
  final VoidCallback onPressed;
  final String buttonText;
  final double buttonWidth;
  final double buttonHeight;
  final bool isEmpty;

  @override
  Widget build(BuildContext context) {
    //  final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.button,
        ),
        style: TextButton.styleFrom(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          fixedSize: Size(buttonWidth, buttonHeight),
        ),
      ),
    );
  }
}
