import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            'Built & Developed by Christian Hizon',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'sfmono',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 20),
          child: InkWell(
            onTap: () {},
            child: Text(
              'See source code',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 12,
                fontFamily: 'sfmono',
              ),
            ),
          ),
        )
      ],
    );
  }
}
