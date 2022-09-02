import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../widgets/widgets.dart';

class ProjectWeb extends StatelessWidget {
  const ProjectWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final list = defProjects;

    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '''03.''',
                style: TextStyle(
                  // color: AppColors().neonColor,
                  fontSize: 14,
                  fontFamily: 'sfmono',
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Text(
                '''My Noteworthy Projects''',
                style: GoogleFonts.roboto(
                  // color: AppColors().textColor,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Container(
                height: 0.5,
                margin: const EdgeInsets.only(left: 15),
                width: Constants.getWidth(context) * 0.25,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            'view the archives',
            style: TextStyle(
              // color: AppColors().neonColor,
              fontSize: 15,
              fontFamily: 'sfmono',
            ),
          ),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              var count = 4;
              final width = constraints.maxWidth;
              if (width < 1300) {
                count = 3;
              }
              return StaggeredGrid.count(
                crossAxisCount: count,
                children: list
                    .map(
                      (e) => StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: ProjectItem(project: e),
                      ),
                    )
                    .toList(),
              );
            },
          ),
          const SizedBox(height: 40)
        ],
      ),
    );
  }
}
