import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../core/core.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key});

  void _scrollTo(int index) {
    getIt<AutoScrollController>().scrollToIndex(
      index,
      preferPosition: AutoScrollPosition.begin,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PopupMenuButton<int>(
            icon: const Icon(Icons.menu),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 0,
                // row with two children
                child: ListTile(
                  dense: true,
                  title: Text('About me'),
                ),
              ),
              const PopupMenuItem(
                value: 1,
                // row with two children
                child: ListTile(
                  dense: true,
                  title: Text('Experience'),
                ),
              ),
              const PopupMenuItem(
                value: 2,
                // row with two children
                child: ListTile(
                  dense: true,
                  title: Text('Projects'),
                ),
              ),
              const PopupMenuItem(
                value: 3,
                // row with two children
                child: ListTile(
                  dense: true,
                  title: Text('Contact'),
                ),
              ),
              const PopupMenuItem(
                value: 4,
                child: ListTile(
                  dense: true,
                  trailing: Icon(Icons.download),
                  horizontalTitleGap: 0,
                  title: Text('Resume'),
                ),
              ),
            ],
            // offset: const Offset(  , 100),
            elevation: 2,
            // on selected we show the dialog box
            onSelected: _scrollTo,
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
