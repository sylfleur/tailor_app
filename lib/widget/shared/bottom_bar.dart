import 'package:flutter/material.dart';
import 'package:tailor_app_manager/main.dart';
import 'package:tailor_app_manager/screens/home_screen.dart';
import '../../screens/clients_screen.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (int index, ) {
        switch (index) {
          case 0:
           MyApp.bodyView.value = const DashBoard();
            break;
          case 1:

            break;
          case 2:
            MyApp.bodyView.value = const ShowClient();
            break;
          case 3:
            break;
        }
      },
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
            Icons.assessment,
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
