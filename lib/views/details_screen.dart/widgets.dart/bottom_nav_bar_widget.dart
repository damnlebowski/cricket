import 'package:cricket/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 2,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: darkBlue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restart_alt_outlined),
            label: 'Refresh',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'All Matches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Create Contest',
          ),
        ],
        currentIndex: 0);
  }
}
