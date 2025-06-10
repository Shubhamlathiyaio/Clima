import 'package:clima/configs/typography/app_typography.dart';
import 'package:flutter/material.dart';


class AppTextTheme {
  static TextTheme  appTextThemeLight = TextTheme(
    // TODO set all properly pixle pefect
    // Body text (used in paragraphs or normal text)
    bodyLarge: roboto.w400.fs16.black, // Default paragraph
    bodyMedium: roboto.w400.fs14.black, // Secondary content
    bodySmall: roboto.w400.fs12.black, // Captions, less important info

    // Display text (used for large decorative headings)
    displayLarge: roboto.w700.fs56.black, // Hero banners or full-screen headers
    displayMedium: raleway.w700.fs48.black.s_02.leman, // Page section headers
    displaySmall: roboto.w700.fs36.black, // Title in card-like views

    // Headlines (prominent titles, less bold than display)
    headlineLarge: roboto.w600.fs32.black, // Dialog titles or major sections
    headlineMedium: roboto.w600.fs28.black, // Page headings
    headlineSmall: roboto.w600.fs24.black, // Section headings

    // Labels (used in buttons, inputs, badges)
    labelLarge: roboto.w500.fs16.black.s05, // Button text
    labelMedium: roboto.w500.fs12.black, // Input hints
    labelSmall: roboto.w500.fs11.black, // Tiny text like badges
    
    // Titles (used for app bars, tiles, cards)
    titleLarge: roboto.w600.fs22.black, // AppBar title, page title
    titleMedium: roboto.w600.fs16.black, // Card titles, tile titles
    titleSmall: roboto.w500.fs14.black, // Subtitle in list tiles
  );
  static TextTheme  appTextThemeDark = TextTheme(
    // TODO set all properly pixle pefect
    // Body text (used in paragraphs or normal text)
    bodyLarge: roboto.w400.fs16.white, // Default paragraph
    bodyMedium: roboto.w400.fs14.white, // Secondary content
    bodySmall: roboto.w400.fs12.white, // Captions, less important info

    // Display text (used for large decorative headings)
    displayLarge: roboto.w700.fs56.white, // Hero banners or full-screen headers
    displayMedium: raleway.w700.fs48.white.s_02.leman, // Page section headers
    displaySmall: roboto.w700.fs36.white, // Title in card-like views

    // Headlines (prominent titles, less bold than display)
    headlineLarge: roboto.w600.fs32.white, // Dialog titles or major sections
    headlineMedium: roboto.w600.fs28.white, // Page headings
    headlineSmall: roboto.w600.fs24.white, // Section headings

    // Labels (used in buttons, inputs, badges)
    labelLarge: roboto.w500.fs16.white.s05, // Button text
    labelMedium: roboto.w500.fs12.white, // Input hints
    labelSmall: roboto.w500.fs11.white, // Tiny text like badges
    
    // Titles (used for app bars, tiles, cards)
    titleLarge: roboto.w600.fs22.white, // AppBar title, page title
    titleMedium: roboto.w600.fs16.white, // Card titles, tile titles
    titleSmall: roboto.w500.fs14.white, // Subtitle in list tiles
  );
}
