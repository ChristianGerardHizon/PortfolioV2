import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../../core/core.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        return Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(
            left: width * 0.01,
            top: height * 0.07,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 50),
                    child: Text(
                      Strings.welcomeText,
                      style: TextStyle(
                        color: color,
                        fontSize: 16,
                        fontFamily: 'sfmono',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      Strings.name,
                      style: GoogleFonts.robotoSlab(
                        // color: AppColors().textColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        fontSize: 45,
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        Strings.whatIdo,
                        style: GoogleFonts.robotoSlab(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontSize: 45,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      // width: 900,
                      width: Constants.getWidth(context) * 0.45,
                      child: RichText(
                        text: TextSpan(
                          text: Strings.introAbout,
                          style: GoogleFonts.roboto(
                            // color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: Strings.currentOrgName,
                              style: GoogleFonts.roboto(
                                // color: AppColors().neonColor,
                                letterSpacing: 1,
                                height: 1.5,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 70),
                    child: InkWell(
                      onTap: () {
                        getIt<AutoScrollController>().scrollToIndex(
                          0,
                          preferPosition: AutoScrollPosition.begin,
                        );
                      },
                      child: Container(
                        height: Constants.getHeight(context) * 0.09,
                        width: Constants.getWidth(context) * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(3)),
                          border: Border.all(
                            color: color,
                            width: 1.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Check Out My Work!',
                            style: TextStyle(
                              color: color,
                              fontSize: 13,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'sfmono',
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
