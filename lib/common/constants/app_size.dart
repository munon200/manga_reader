import 'dart:ui';

class AppSize {
  AppSize._();

  static var pixelRatio = window.devicePixelRatio;

  //Size in physical pixels
  static var physicalScreenSize = window.physicalSize;
  static var physicalWidth = physicalScreenSize.width;
  static var physicalHeight = physicalScreenSize.height;

  //static Size in logical pixels
  static var logicalScreenSize = window.physicalSize / pixelRatio;
  static var logicalWidth = logicalScreenSize.width;
  static var logicalHeight = logicalScreenSize.height;

  //static Padding in physical pixels
  static var padding = window.padding;

  //static Safe area paddings in logical pixels
  static var paddingLeft = window.padding.left / window.devicePixelRatio;
  static var paddingRight = window.padding.right / window.devicePixelRatio;
  static var paddingTop = window.padding.top / window.devicePixelRatio;
  static var paddingBottom = window.padding.bottom / window.devicePixelRatio;

  //static Safe area in logical pixels
  static var safeWidth = logicalWidth - paddingLeft - paddingRight;
  static var safeHeight = logicalHeight - paddingTop - paddingBottom;
}
