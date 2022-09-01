import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactWeb extends StatelessWidget {
  const ContactWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Get in Touch
        // Although I'm not looking for any new opportunities, my inbox is
        // always open. Wether you have a question or just want to say hi. I'll
        // try my best to get back

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '''04.''',
              style: TextStyle(
                // color: AppColors().neonColor,
                fontSize: 14,
                fontFamily: 'sfmono',
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              ''' What's next?''',
              style: TextStyle(
                // color: AppColors().neonColor,
                fontSize: 16,
                fontFamily: 'sfmono',
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),

        Text(
          'Get in Touch',
          textAlign: TextAlign.center,
          style: GoogleFonts.robotoSlab(
            // color: AppColors().textColor,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            fontSize: 45,
          ),
        ),

        SizedBox(
          width: 500,
          child: Text(
            "I'm open for any new opportunities and my inbox is always open. Wether you have a question or just want to say hello. I'll try my best to get back",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              // color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 16,
            ),
          ),
        ),

        const SizedBox(height: 40),

        OutlinedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: Theme.of(context).primaryColor, width: 2),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          ),
          onPressed: () {},
          child: const Text('Say Hello!'),
        ),
      ],
    );
  }
}
