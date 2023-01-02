import 'package:flutter/material.dart';
import 'package:manga_reader/presentation/features/feed/screens/home/models/drawer_menu_item.dart';
import 'package:manga_reader/presentation/features/feed/screens/home/widgets/home_drawer_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawerMenu,
    );
  }

  Widget get _buildDrawerMenu {
    return HomeDrawerMenu(
      drawerItems: [
        DrawerMenuItem(
          name: 'name',
          iconPath: 'iconPath',
          onPressed: () {},
        ),
      ],
    );
  }
}