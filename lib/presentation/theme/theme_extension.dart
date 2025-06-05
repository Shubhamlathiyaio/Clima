import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension ContextExtensions on BuildContext {
  /// Get ThemeData from context
  // ThemeData get theme => Theme.of(this);
  TextTheme get text => textTheme;
  ColorScheme get colorScheme => theme.colorScheme;

  /// Get MediaQueryData from context
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Get Size of the screen
  Size get size => mediaQuery.size;
  // double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  /// AppBar
  bool get isKeyboardOpen => mediaQuery.viewInsets.bottom > 0;

  /// Check if in dark mode
  bool get isDarkMode => theme.brightness == Brightness.dark;

  /// Get device pixel ratio
  double get devicePixelRatio => mediaQuery.devicePixelRatio;

  /// Get platform brightness
  Brightness get platformBrightness => mediaQuery.platformBrightness;

  /// The are the breackpoints of the screen
  double get mobileWidth => 600.0; // Mobile breakpoint
  double get tabletWidth => 900.0; // Tablet breakpoint
  double get desktopWidth => 1200.0; // Desktop breakpoint
  
  /// Devoice bools
  bool get isMobile => width < mobileWidth;
  bool get isTablet => width >= mobileWidth && width < tabletWidth;
  bool get isDesktop => width >= tabletWidth && width < desktopWidth;


  // TextStyle get headlineLarge => text.headlineLarge ?? TextStyle();
  // TextStyle get headlineMedium => text.headlineMedium ?? TextStyle();
  // TextStyle get headlineSmall => text.headlineSmall ?? TextStyle();

  // TextStyle get titleLarge => text.titleLarge ?? TextStyle();
  // TextStyle get titleMedium => text.titleMedium ?? TextStyle();
  // TextStyle get titleSmall => text.titleSmall ?? TextStyle();

  // TextStyle get bodyLarge => text.bodyLarge ?? TextStyle();
  // TextStyle get bodyMedium => text.bodyMedium ?? TextStyle();
  // TextStyle get bodySmall => text.bodySmall ?? TextStyle();

  // TextStyle get labelLarge => text.labelLarge ?? TextStyle();
  // TextStyle get labelMedium => text.labelMedium ?? TextStyle();
  // TextStyle get labelSmall => text.labelSmall ?? TextStyle();

  // TextStyle get displayLarge => text.displayLarge ?? TextStyle();
  // TextStyle get displayMedium => text.displayMedium ?? TextStyle();
  // TextStyle get displaySmall => text.displaySmall ?? TextStyle();



}
