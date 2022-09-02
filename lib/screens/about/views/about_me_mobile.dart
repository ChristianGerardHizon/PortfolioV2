import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
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
                    fontSize: 17,
                    fontFamily: 'sfmoo',
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
                width: Constants.getWidth(context) * 0.3,
                color: Colors.grey,
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
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        Strings.aboutPara1,
                        style: GoogleFonts.roboto(
                          // color: AppColors().textLight,
                          letterSpacing: 1,
                          height: 1.5,
                          fontSize: 15,
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
                          fontSize: 15,
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
                          fontSize: 15,
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
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        childAspectRatio: 6,
                        physics: NeverScrollableScrollPhysics(),
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
                                  fontSize: 13,
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
                                  fontSize: 13,
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
                                  fontSize: 13,
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
                                  fontSize: 13,
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
