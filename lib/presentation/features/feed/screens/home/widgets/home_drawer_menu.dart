import 'package:flutter/material.dart';
import 'package:manga_reader/common/utils/list_util.dart';
import 'package:manga_reader/presentation/features/feed/screens/home/models/drawer_menu_item.dart';

class HomeDrawerMenu extends Drawer {
  final List<DrawerMenuItem> drawerItems;

  const HomeDrawerMenu({
    Key? key,
    required this.drawerItems,
  }) : super(key: key);

  @override
  Widget? get child {
    return SafeArea(
      child: Column(
        children: ListUtil.generate(
          items: drawerItems,
          generated: (index, value) {
            return Text('Chien $index');
          },
        ),
      ),
    );
  }
}
