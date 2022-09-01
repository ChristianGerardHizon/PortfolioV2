import 'package:flutter/material.dart';
import 'package:hizonchristian/widgets/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      web: Text('Home'),
      tab: Text('Home'),
      mobile: Text('Home'),
    );
  }
}
