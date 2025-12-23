import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Refined Black & White Palette - 精致黑白调色板
  static const primaryColor = Color(0xFF1A1A1A); // 深黑（不是纯黑，更柔和）
  static const secondaryColor = Color(0xFF666666); // 中灰
  static const accentColor = Color(0xFF000000); // 纯黑（用于强调）
  
  // Background colors - 背景色
  static const backgroundColor = Color(0xFFFAFAFA); // 极淡灰（比纯白更柔和）
  static const surfaceColor = Color(0xFFFFFFFF); // 纯白
  static const cardColor = Color(0xFFFFFFFF); // 卡片白色
  
  // Text colors - 文字颜色
  static const textPrimary = Color(0xFF1A1A1A); // 主文字
  static const textSecondary = Color(0xFF666666); // 次要文字
  static const textTertiary = Color(0xFF999999); // 辅助文字
  static const textDisabled = Color(0xFFCCCCCC); // 禁用文字
  
  // Border and divider colors - 边框和分割线
  static const borderColor = Color(0xFFF0F0F0); // 边框色
  static const dividerColor = Color(0xFFE8E8E8); // 分割线
  
  // Semantic colors - 语义化颜色
  static const successColor = Color(0xFF2D2D2D); // 成功（深灰）
  static const warningColor = Color(0xFF4D4D4D); // 警告（中灰）
  static const errorColor = Color(0xFF1A1A1A); // 错误（深黑）
  static const infoColor = Color(0xFF808080); // 信息（灰）
  
  // Spacing system - 8px grid - 间距系统
  static const double space1 = 4.0;
  static const double space2 = 8.0;
  static const double space3 = 12.0;
  static const double space4 = 16.0;
  static const double space5 = 20.0;
  static const double space6 = 24.0;
  static const double space8 = 32.0;
  static const double space10 = 40.0;
  static const double space12 = 48.0;
  
  // Border radius - 圆角
  static const double radiusSmall = 8.0;
  static const double radiusMedium = 12.0;
  static const double radiusLarge = 16.0;
  static const double radiusXLarge = 20.0;
  
  // Elevation/Shadow - 阴影
  static List<BoxShadow> get shadowSmall => [
    BoxShadow(
      color: const Color(0xFF000000).withOpacity(0.04),
      blurRadius: 8,
      offset: const Offset(0, 2),
    ),
  ];
  
  static List<BoxShadow> get shadowMedium => [
    BoxShadow(
      color: const Color(0xFF000000).withOpacity(0.06),
      blurRadius: 16,
      offset: const Offset(0, 4),
    ),
  ];
  
  static List<BoxShadow> get shadowLarge => [
    BoxShadow(
      color: const Color(0xFF000000).withOpacity(0.08),
      blurRadius: 24,
      offset: const Offset(0, 8),
    ),
  ];

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    cardColor: cardColor,
    
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      tertiary: accentColor,
      surface: surfaceColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: textPrimary,
      error: errorColor,
    ),
    
    // Typography - 字体系统
    textTheme: GoogleFonts.interTextTheme(
      const TextTheme(
        // Display - 展示文字
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: textPrimary,
          height: 1.2,
          letterSpacing: -0.5,
        ),
        displayMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: textPrimary,
          height: 1.3,
          letterSpacing: -0.3,
        ),
        displaySmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: textPrimary,
          height: 1.3,
        ),
        
        // Headline - 标题
        headlineLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: textPrimary,
          height: 1.4,
        ),
        headlineMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: textPrimary,
          height: 1.4,
        ),
        headlineSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: textPrimary,
          height: 1.4,
        ),
        
        // Title - 小标题
        titleLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textPrimary,
          height: 1.5,
        ),
        titleMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: textPrimary,
          height: 1.5,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textSecondary,
          height: 1.5,
        ),
        
        // Body - 正文
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: textPrimary,
          height: 1.6,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: textSecondary,
          height: 1.6,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: textTertiary,
          height: 1.5,
        ),
        
        // Label - 标签
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: textPrimary,
          height: 1.4,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: textSecondary,
          height: 1.4,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: textTertiary,
          height: 1.4,
        ),
      ),
    ),
    
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: false,
      backgroundColor: surfaceColor,
      surfaceTintColor: Colors.transparent,
      foregroundColor: textPrimary,
      titleTextStyle: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: textPrimary,
        letterSpacing: -0.3,
      ),
      iconTheme: const IconThemeData(
        color: textPrimary,
        size: 24,
      ),
    ),
    
    cardTheme: CardThemeData(
      elevation: 0,
      color: cardColor,
      shadowColor: Colors.black.withOpacity(0.04),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radiusLarge),
      ),
      margin: EdgeInsets.zero,
    ),
    
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: accentColor,
        foregroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
        ),
      ),
    ),
    
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: textPrimary,
        side: const BorderSide(color: borderColor, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMedium),
        ),
        textStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: surfaceColor,
      contentPadding: const EdgeInsets.all(16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMedium),
        borderSide: const BorderSide(color: borderColor, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMedium),
        borderSide: const BorderSide(color: borderColor, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMedium),
        borderSide: const BorderSide(color: textPrimary, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMedium),
        borderSide: const BorderSide(color: errorColor, width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radiusMedium),
        borderSide: const BorderSide(color: errorColor, width: 1.5),
      ),
      hintStyle: const TextStyle(
        color: textTertiary,
        fontSize: 15,
      ),
      labelStyle: const TextStyle(
        color: textSecondary,
        fontSize: 15,
      ),
    ),
    
    dividerTheme: const DividerThemeData(
      color: dividerColor,
      thickness: 1,
      space: 1,
    ),
    
    iconTheme: const IconThemeData(
      color: textPrimary,
      size: 24,
    ),
  );

  // Course colors - still grayscale but more refined
  static List<Color> courseColors = [
    const Color(0xFF1A1A1A),
    const Color(0xFF2D2D2D),
    const Color(0xFF404040),
    const Color(0xFF525252),
    const Color(0xFF666666),
    const Color(0xFF7A7A7A),
    const Color(0xFF8C8C8C),
    const Color(0xFF9E9E9E),
    const Color(0xFFB0B0B0),
    const Color(0xFFC2C2C2),
    const Color(0xFFD4D4D4),
    const Color(0xFFE6E6E6),
  ];
}
