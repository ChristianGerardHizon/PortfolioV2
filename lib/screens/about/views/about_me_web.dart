import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class AboutMeWeb extends StatefulWidget {
  const AboutMeWeb({super.key});

  @override
  State<AboutMeWeb> createState() => _AboutMeWebState();
}

class _AboutMeWebState extends State<AboutMeWeb> {
  bool isHovered = false;

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
              const SizedBox(width: 200),
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      width: Constants.getWidth(context) *
                          (isHovered ? 0.22 : 0.225),
                      height: Constants.getWidth(context) *
                          (isHovered ? 0.22 : 0.225),
                      margin: const EdgeInsets.only(top: 10, left: 10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                          width: 1.5,
                        ),
                      ),
                    ),
                    MouseRegion(
                      onEnter: (event) {
                        setState(() {
                          isHovered = true;
                        });
                      },
                      onExit: (event) {
                        setState(() {
                          isHovered = false;
                        });
                      },
                      child: Container(
                        width: Constants.getWidth(context) * 0.22,
                        height: Constants.getWidth(context) * 0.22,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                              Colors.transparent,
                              isHovered ? BlendMode.lighten : BlendMode.color,
                            ),
                            image: AssetImage(Assets.images.profile.path),
                          ),
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
