import 'package:flutter/material.dart';
import 'package:lodestar/app_impl/material/ui/home/navigation_bar_background.dart';
import 'package:lodestar/app_impl/material/ui/home/navigation_bar_items.dart';

class LodestarFooter extends StatelessWidget {
  const LodestarFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: wavesAndShipHeight,
      child: Stack(
        children: const [
          NavigationBarBackground(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: wavesAndShipHeight * 0.1),
              child: NavigationBarItems(),
            ),
          ),
        ],
      ),
    );
  }
}
