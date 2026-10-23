import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key, required this.press});

  final ValueChanged<int> press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.8,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(12),
      ),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
          isScrollable: false,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          dividerColor: Colors.transparent,
          onTap: press,
          tabs: const [
            Tab(text: "Morning Login"),
            Tab(text: "Night Login"),
          ],
        ),
      ),
    );
  }
}
