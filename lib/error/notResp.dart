// Custom function for URL handling
import 'package:Nakul_Dev/functions/animated_Grid_Dot.dart';
import 'package:Nakul_Dev/functions/launch_url.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotResp extends StatelessWidget {
  const NotResp({super.key});

  TextStyle get titleStyle => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  TextStyle get messageStyle => const TextStyle(
        fontSize: 16,
        color: Colors.white70,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AnimatedGridDotBackground(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svg/404.svg',
                    color: Colors.white,
                    height: 200,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Oops! Page Not Found',
                    style: titleStyle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'The page you are looking for might have been removed \n'
                    'or is temporarily unavailable.',
                    textAlign: TextAlign.center,
                    style: messageStyle,
                  ),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: () {
                      urlLaunch("https://www.linkedin.com/in/quangchien2503/");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: ContactMe_containerStyle_tablet.color,
                        borderRadius: ContactMe_containerStyle_tablet.borderRadius,
                      ),
                      padding: ContactMe_containerStyle_tablet.padding,
                      margin: ContactMe_containerStyle_tablet.margin,
                      width: 135,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/linkedin.svg",
                            color: textStyles.B.color,
                          ),
                          const SizedBox(width: 4), // Add some spacing
                          Text(
                            "LinkedIn", // Corrected spelling
                            style: GoogleFonts.chakraPetch(textStyle: textStyles.P2B),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
