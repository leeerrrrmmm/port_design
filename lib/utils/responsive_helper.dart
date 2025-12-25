import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResponsiveHelper {
  // Базові розміри для екрану (стандартний десктоп)
  static const double baseWidth = 1920.0;
  static const double baseHeight = 1080.0;
  
  // Мінімальна ширина для адаптації (не менше 768px - планшети)
  static const double minWidth = 768.0;
  
  // Перевірка, чи це веб-платформа
  static bool get isWeb => kIsWeb;
  
  // Отримати поточну ширину екрану
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  
  // Отримати поточну висоту екрану
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  
  // Перевірка, чи це не телефон (для веб)
  static bool isNotMobile(BuildContext context) {
    if (!isWeb) return true; // Для не-веб платформ завжди true
    return screenWidth(context) >= minWidth;
  }
  
  // Адаптивна позиція по X (left/right)
  static double adaptiveX(BuildContext context, double baseX) {
    if (!isNotMobile(context)) return baseX;
    final width = screenWidth(context);
    final scale = width / baseWidth;
    return baseX * scale;
  }
  
  // Адаптивна позиція по Y (top/bottom)
  static double adaptiveY(BuildContext context, double baseY) {
    if (!isNotMobile(context)) return baseY;
    final height = screenHeight(context);
    final scale = height / baseHeight;
    return baseY * scale;
  }
  
  // Адаптивний розмір
  static double adaptiveSize(BuildContext context, double baseSize) {
    if (!isNotMobile(context)) return baseSize;
    final width = screenWidth(context);
    final height = screenHeight(context);
    // Використовуємо середнє значення для більш збалансованого масштабування
    final scale = ((width / baseWidth) + (height / baseHeight)) / 2;
    return baseSize * scale;
  }
  
  // Адаптивний scale для зображень
  static double adaptiveScale(BuildContext context, double baseScale) {
    if (!isNotMobile(context)) return baseScale;
    final width = screenWidth(context);
    final height = screenHeight(context);
    final scale = ((width / baseWidth) + (height / baseHeight)) / 2;
    // Для scale потрібно ділити, бо менший scale = більше зображення
    return baseScale / scale;
  }
  
  // Адаптивна ширина
  static double adaptiveWidth(BuildContext context, double baseWidth) {
    if (!isNotMobile(context)) return baseWidth;
    final width = screenWidth(context);
    final scale = width / ResponsiveHelper.baseWidth;
    return baseWidth * scale;
  }
  
  // Адаптивна висота
  static double adaptiveHeight(BuildContext context, double baseHeight) {
    if (!isNotMobile(context)) return baseHeight;
    final height = screenHeight(context);
    final scale = height / ResponsiveHelper.baseHeight;
    return baseHeight * scale;
  }
}

