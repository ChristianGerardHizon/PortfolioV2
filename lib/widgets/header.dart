import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../core/core.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  _scrollTo(int index) {
    getIt<AutoScrollController>().scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Expanded(child: SizedBox()),
            TextButton(
              onPressed: () => _scrollTo(0),
              child: const Text('About Me'),
            ),
            TextButton(
              onPressed: () => _scrollTo(1),
              child: const Text('Experience'),
            ),
            TextButton(
              onPressed: () => _scrollTo(2),
              child: const Text('Projects'),
            ),
            TextButton(
              onPressed: () => _scrollTo(3),
              child: const Text('Contact'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Resume'),
            ),
          ],
        ),
      ),
    );
  }
}
