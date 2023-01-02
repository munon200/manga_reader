class DrawerMenuItem {
  String name;
  String iconPath;
  Function() onPressed;

  DrawerMenuItem({
    required this.name,
    required this.iconPath,
    required this.onPressed,
  });
}
