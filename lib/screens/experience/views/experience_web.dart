import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class ExperienceWeb extends StatefulWidget {
  const ExperienceWeb({super.key});

  @override
  State<ExperienceWeb> createState() => _ExperienceWebState();
}

class _ExperienceWebState extends State<ExperienceWeb> {
  final list = defExperience;
  late Experience selected;

  @override
  void initState() {
    super.initState();

    selected = list.first;
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Center(
      child: SizedBox(
        width: 1000,
        child: Row(
          children: [
            // exp selector
            SizedBox(
              width: 200,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final item = list[index];
                  final isSelected = item == selected;
                  return Row(
                    children: [
                      const SizedBox(width: 10, child: VerticalDivider()),
                      Expanded(
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            setState(() {
                              selected = item;
                            });
                          },
                          tileColor: isSelected ? color : null,
                          title: Text(
                            item.company,
                            style: GoogleFonts.roboto(
                              color: isSelected ? Colors.white : null,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(selected.company),
            ),
            // exp view
          ],
        ),
      ),
    );
  }
}
