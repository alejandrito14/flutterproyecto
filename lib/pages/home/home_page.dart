import '/pages/home/widgets/header.dart';
import '/pages/home/widgets/tab_foods.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            TabFoods(),
          ],
        ),
      ),
    );
  }
}
