import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: '-',
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.quiz,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.person_sharp,
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: Icon(
            Icons.settings,
          ),
        ),
      ],
    );
  }
}
