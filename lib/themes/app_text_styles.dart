import 'package:flutter/widgets.dart';
import 'package:gameplay/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final titleLogin = GoogleFonts.rajdhani(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: AppColors.heading,
  );
  
  
  static final subtitleLogin = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: AppColors.heading,
  );

  static final titleHome = GoogleFonts.rajdhani(
    fontSize: 25,
    fontWeight: FontWeight.normal,
    color: AppColors.heading,
  );
  
  static final titleBoldHome = GoogleFonts.rajdhani(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: AppColors.heading,
  );
  
  static final subtitleHome = GoogleFonts.rajdhani(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.heading,
  );
  
  static final subtitleBoldHome = GoogleFonts.rajdhani(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.heading,
  );
  
  static final discordLogin = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.heading,
  );
}
