import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailDetails extends StatelessWidget {
  const EmailDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(flex: 4, child: Container()),

          RotatedBox(
            quarterTurns: 1,
            child: Text(
              'christiangerardhizon@gmail.com',
              style: GoogleFonts.roboto(
                // color: AppColors().textLight,
                letterSpacing: 1.5,
                height: 1.5,
                fontSize: 14,
              ),
            ),
          ),

          const SizedBox(height: 20),

          ///
          /// Divider
          ///
          const Flexible(flex: 2, child: VerticalDivider()),
        ],
      ),
    );
  }
}
