import 'package:flutter/material.dart';

import 'components/categories.dart';
import 'components/custom_app_bar.dart';
import 'components/houses.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Categories(),
          Houses(),
        ],
      ),
    );
  }
}
