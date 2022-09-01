import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Get in Touch
      // Although I'm not looking for any new opportunities, my inbox is
      // always open. Wether you have a question or just want to say hi. I'll
      // try my best to get back

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Mobile'),
          Text(
            '''04.''',
            style: TextStyle(
              // color: AppColors().neonColor,
              fontSize: 14,
              fontFamily: 'sfmono',
            ),
          ),
          Text(
            ''' What's next?''',
            style: TextStyle(
              // color: AppColors().neonColor,
              fontSize: 16,
              fontFamily: 'sfmono',
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

      Text(
        "Although I'm not looking for any new opportunities, my inbox is always open. Wether you have a question or just want to say hi. I'll try my best to get back",
        style: GoogleFonts.roboto(
          // color: AppColors().textLight,
          letterSpacing: 1,
          height: 1.5,
          fontSize: 16,
        ),
      ),

      const SizedBox(height: 20),

      OutlinedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
        ),
        onPressed: () {},
        child: const Text('Say Hello!'),
      ),
    ]);
  }
}
