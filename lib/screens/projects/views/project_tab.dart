import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../widgets/widgets.dart';

class ProjectTab extends StatelessWidget {
  const ProjectTab({super.key});

  @override
  Widget build(BuildContext context) {
    final list = defProjects;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
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
                    fontSize: 25),
              ),
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
          StaggeredGrid.count(
            crossAxisCount: 2,
            children: list
                .map(
                  (e) => StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: ProjectItem(project: e),
                  ),
                )
                .toList(),
          ),
          SizedBox(height: 40)
        ],
      ),
    );
  }
}
