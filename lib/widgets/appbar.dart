import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return _buildAppBar();
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget _buildAppBar() {
    return AppBar(title: Text('Cozinhando em Casa'));
  }
}
