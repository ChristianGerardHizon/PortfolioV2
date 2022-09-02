import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class ExperiencePanelMobile extends StatelessWidget {
  const ExperiencePanelMobile({
    super.key,
    required this.experience,
    this.height = 200,
  });
  final Experience experience;
  final double height;
  @override
  Widget build(BuildContext context) {
    final list = experience.duties;
    final color = Theme.of(context).primaryColor;
    return SizedBox(
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: experience.position,
              style: GoogleFonts.roboto(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                fontSize: 20,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' @${experience.company}',
                  style: GoogleFonts.roboto(color: color, fontSize: 20),
                )
              ],
            ),
          ),
          Text(
            experience.duration,
            style: const TextStyle(
              color: Colors.grey,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 14,
              fontFamily: 'sfmono',
            ),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            itemCount: list.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final item = list[index];
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const SizedBox(
                  width: 2,
                  child: Icon(Icons.arrow_right, size: 16),
                ),
                horizontalTitleGap: 0,
                minVerticalPadding: 0,
                
                title: Text(
                  item,
                  style: TextStyle(
                    color: Colors.grey[800],
                    letterSpacing: 1,
                    height: 1.5,
                    fontSize: 10,
                    fontFamily: 'sfmono',
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
