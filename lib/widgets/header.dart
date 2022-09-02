import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/core.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  void _scrollTo(int index) {
    getIt<AutoScrollController>().scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return SizedBox(
      height: 80,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(width: 10),
            InkWell(
              onTap: () async {
                try {
                  await launchUrl(Uri.parse(defResumeURL));
                } catch (e) {
                  log(e.toString());
                }
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: color,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: SizedBox(
                  height: 40,
                  width: 90,
                  child: Center(
                    child: Text(
                      'Resume',
                      style: TextStyle(color: color),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
