import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../widget/widget.dart';

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
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          width: 1,
                          color: isSelected ? color : Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          onTap: () {
                            setState(() {
                              selected = item;
                            });
                          },
                          tileColor: isSelected ? color.withOpacity(.8) : null,
                          title: Text(
                            item.company,
                            style: GoogleFonts.roboto(
                              color: isSelected ? Colors.white : null,
                              letterSpacing: 1,
                              height: 1.5,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                      Container(
                        height: 0.5,
                        margin: const EdgeInsets.only(left: 15),
                        // width: AppClass().getMqWidth(context) * 0.2,
                        // color: AppColors().textLight,
                      ),
                      const SizedBox(width: 10),
                      const Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 40),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: ExperiencePanel(
                      key: ValueKey(selected.company),
                      experience: selected,
                    ),
                  ),
                ],
              ),
            ),
            // exp view
          ],
        ),
      ),
    );
  }
}
