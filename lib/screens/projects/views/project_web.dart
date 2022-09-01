import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../widgets/widgets.dart';

class ProjectWeb extends StatelessWidget {
  const ProjectWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final list = defProjects;

    return Column(
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
              '''My Notable Projects''',
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
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            children: List.generate(
              list.length,
              (index) {
                return ProjectItem(
                  project: list[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
