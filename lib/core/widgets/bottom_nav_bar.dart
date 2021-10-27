import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: SizedBox(
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                      ),
                      Text(
                        'Names',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.timeline,
                      ),
                      Text(
                        'Archive',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu_book_outlined,
                      ),
                      Text(
                        'Tehillim',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                      ),
                      Text(
                        'Settings',
                        style: Theme.of(context).textTheme.bodyText1,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
