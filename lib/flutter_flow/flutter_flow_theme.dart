// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color primary1;
  late Color passiveColor;
  late Color grey;
  late Color black;
  late Color white;
  late Color darkGrey;
  late Color lightGrey;
  late Color transparent;
  late Color gold;
  late Color superLightGrey;
  late Color very;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFFE0E3E7);
  late Color primaryText = const Color(0xFF14181B);
  late Color secondaryText = const Color(0xFF57636C);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color primary1 = const Color(0xFF8087F8);
  late Color passiveColor = const Color(0x528087F8);
  late Color grey = const Color(0xFFCCCCCC);
  late Color black = const Color(0xFF000000);
  late Color white = const Color(0xFFFFFFFF);
  late Color darkGrey = const Color(0xFFC8CCDA);
  late Color lightGrey = const Color(0xFFF1F3FF);
  late Color transparent = const Color(0x00FFFFFF);
  late Color gold = const Color(0xFFC09D52);
  late Color superLightGrey = const Color(0xFFE3E7EF);
  late Color very = const Color(0xFFD10306);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Inter Tight';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'akrobatSemibold';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'akrobatSemibold',
        color: theme.gold,
        fontWeight: FontWeight.w600,
        fontSize: 30.0,
      );
  String get displaySmallFamily => 'Inter Tight';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Lato';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.bold,
        fontSize: 34.0,
      );
  String get headlineMediumFamily => 'akrobatSemibold';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'akrobatSemibold',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get headlineSmallFamily => 'akrobatSemibold';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'akrobatSemibold',
        color: theme.black,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Lato';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      );
  String get titleMediumFamily => 'akrobatRegular';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'akrobatRegular',
        color: theme.black,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Inter Tight';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'akrobatRegular';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'akrobatRegular',
        color: theme.black,
        fontWeight: FontWeight.normal,
        fontSize: 15.0,
      );
  String get labelMediumFamily => 'akrobatRegular';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'akrobatRegular',
        color: theme.white,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Lato';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.w600,
        fontSize: 13.0,
      );
  String get bodyLargeFamily => 'Inter';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'akrobatRegular';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'akrobatRegular',
        color: theme.black,
        fontWeight: FontWeight.normal,
        fontSize: 22.0,
      );
  String get bodySmallFamily => 'Inter';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Inter Tight';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'akrobatSemibold';
  TextStyle get displayMedium => const TextStyle(
        fontFamily: 'akrobatSemibold',
        color: Color(0xFFC09D52),
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get displaySmallFamily => 'Inter Tight';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Lato';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.bold,
        fontSize: 34.0,
      );
  String get headlineMediumFamily => 'Inter Tight';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'akrobatSemibold';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'akrobatSemibold',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Lato';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      );
  String get titleMediumFamily => 'akrobatRegular';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'akrobatRegular',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
      );
  String get titleSmallFamily => 'Inter Tight';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Inter';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Lato';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.w600,
        fontSize: 13.0,
      );
  String get bodyLargeFamily => 'Inter';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Inter';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Inter';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Inter Tight';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'akrobatSemibold';
  TextStyle get displayMedium => const TextStyle(
        fontFamily: 'akrobatSemibold',
        color: Color(0xFFC09D52),
        fontWeight: FontWeight.w600,
        fontSize: 40.0,
      );
  String get displaySmallFamily => 'Inter Tight';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
        fontStyle: FontStyle.normal,
      );
  String get headlineLargeFamily => 'Lato';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.bold,
        fontSize: 34.0,
      );
  String get headlineMediumFamily => 'Inter Tight';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get headlineSmallFamily => 'akrobatSemibold';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'akrobatSemibold',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Lato';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.w500,
        fontSize: 17.0,
      );
  String get titleMediumFamily => 'akrobatRegular';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'akrobatRegular',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 20.0,
      );
  String get titleSmallFamily => 'Inter Tight';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Inter Tight',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 18.0,
      );
  String get labelMediumFamily => 'Inter';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Lato';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Lato',
        color: theme.black,
        fontWeight: FontWeight.w600,
        fontSize: 13.0,
      );
  String get bodyLargeFamily => 'Inter';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Inter';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Inter';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Inter',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF4B39EF);
  late Color secondary = const Color(0xFF39D2C0);
  late Color tertiary = const Color(0xFFEE8B60);
  late Color alternate = const Color(0xFF262D34);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFF95A1AC);
  late Color primaryBackground = const Color(0xFF1D2428);
  late Color secondaryBackground = const Color(0xFF14181B);
  late Color accent1 = const Color(0x4C4B39EF);
  late Color accent2 = const Color(0x4D39D2C0);
  late Color accent3 = const Color(0x4DEE8B60);
  late Color accent4 = const Color(0xB2262D34);
  late Color success = const Color(0xFF249689);
  late Color warning = const Color(0xFFF9CF58);
  late Color error = const Color(0xFFFF5963);
  late Color info = const Color(0xFFFFFFFF);

  late Color primary1 = const Color(0xFFB45EF9);
  late Color passiveColor = const Color(0xFFE853DA);
  late Color grey = const Color(0xFFD74868);
  late Color black = const Color(0xFF000000);
  late Color white = const Color(0xFFFFFFFF);
  late Color darkGrey = const Color(0xFFC8CCDA);
  late Color lightGrey = const Color(0xFFF1F3FF);
  late Color transparent = const Color(0x00FFFFFF);
  late Color gold = const Color(0xFFC09D52);
  late Color superLightGrey = const Color(0xFFE3E7EF);
  late Color very = const Color(0xFFD10306);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}
