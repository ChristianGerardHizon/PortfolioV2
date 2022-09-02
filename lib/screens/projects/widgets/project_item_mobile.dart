import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/core.dart';

class ProjectItemMobile extends StatefulWidget {
  const ProjectItemMobile({super.key, required this.project});

  final Project project;

  @override
  State<ProjectItemMobile> createState() => _ProjectItemMobileState();
}

class _ProjectItemMobileState extends State<ProjectItemMobile> {
  bool isHovering = false;

  _onFileOpen() {}

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return Padding(
      padding: EdgeInsets.all(isHovering ? 12 : 8),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovering = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovering = false;
          });
        },
        child: GestureDetector(
          onTap: () async {
            try {
              await launchUrl(Uri.parse(widget.project.websiteURL));
            } catch (e) {
              log(e.toString());
            }
          },
          child: Card(
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey, width: 1.5),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // simple logo
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.folder,
                              size: 50,
                              color: color,
                            ),
                            IconButton(
                              iconSize: 30,
                              onPressed: () {},
                              icon: Icon(
                                Icons.open_in_new,
                                color: isHovering ? color : null,
                              ),
                            )
                          ],
                        ),
                        // title
                        Text(
                          widget.project.name,
                          style: GoogleFonts.roboto(
                            color: isHovering ? color : null,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // description
                        Text(
                          widget.project.description,
                          style: GoogleFonts.roboto(
                            // color: AppColors().textLight,
                            letterSpacing: 1,
                            height: 1.5,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: widget.project.technologies
                        .map(
                          (e) => Text(
                            e.name.toCapitalized(),
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'sfmono',
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
