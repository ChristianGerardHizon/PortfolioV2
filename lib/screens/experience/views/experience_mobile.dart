import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../widget/widget.dart';

class ExperienceMobile extends StatefulWidget {
  const ExperienceMobile({super.key});

  @override
  State<ExperienceMobile> createState() => _ExperienceMobileState();
}

class _ExperienceMobileState extends State<ExperienceMobile> {
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
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    text: '02.',
                    style: TextStyle(
                      color: color,
                      fontSize: 14,
                      fontFamily: 'sfmono',
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ''' Where I've Worked''',
                        style: GoogleFonts.robotoSlab(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                // exp selector
                SizedBox(
                  width: 90,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      final item = list[index];
                      final isSelected = item == selected;
                      return Row(
                        children: [
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              width: 2,
                              color: isSelected ? color : Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              dense: true,
                              onTap: () {
                                setState(() {
                                  selected = item;
                                });
                              },
                              tileColor:
                                  isSelected ? color.withOpacity(.8) : null,
                              title: Text(
                                item.company,
                                style: GoogleFonts.roboto(
                                  color: isSelected ? Colors.white : null,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 9,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(width: 4),

                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: ExperiencePanelMobile(
                        key: ValueKey(selected.company),
                        experience: selected,
                        height: 310,
                      ),
                    ),
                  ),
                ),
                // exp view
              ],
            ),
          ],
        ),
      ),
    );
  }
}
