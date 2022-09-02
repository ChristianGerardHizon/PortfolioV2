import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class AboutMeTab extends StatelessWidget {
  const AboutMeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 80,
        right: 80,
      ),
      padding: const EdgeInsets.only(bottom: 40, top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              RichText(
                text: TextSpan(
                  text: '01.',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontFamily: 'sfmono',
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' About Me',
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
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Text(
                        Strings.aboutPara1,
                        style: GoogleFonts.roboto(
                          // color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        Strings.aboutPara2,
                        style: GoogleFonts.roboto(
                          // color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        Strings.aboutPara3,
                        style: GoogleFonts.roboto(
                          // color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        Strings.techIntro,
                        style: GoogleFonts.roboto(
                          // color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        childAspectRatio: 10,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.arrow_right),
                              Text(
                                Strings.tech1,
                                style: GoogleFonts.robotoFlex(
                                  // color: AppColors().textLight,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.arrow_right),
                              Text(
                                Strings.tech2,
                                style: GoogleFonts.robotoFlex(
                                  // color: AppColors().textLight,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.arrow_right),
                              Text(
                                Strings.tech3,
                                style: GoogleFonts.robotoFlex(
                                  // color: AppColors().textLight,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.arrow_right),
                              Text(
                                Strings.tech4,
                                style: GoogleFonts.robotoFlex(
                                  // color: AppColors().textLight,
                                  letterSpacing: 1,
                                  height: 1.5,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
