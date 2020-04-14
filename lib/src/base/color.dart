import 'package:flutter/material.dart';
import 'package:flutter_weui/src/base/theme.dart';
import 'package:smart_color/smart_color.dart';

Color _themeColor(Brightness brightness, Color light, Color dark) =>
    brightness == Brightness.dark ? dark : light;

typedef ThemeColorFunction =  Color Function(Brightness,Color,Color);

ThemeColorFunction themeColor = _themeColor;

Color weuiBgColorActive(Brightness brightness) => _themeColor(
    brightness,
    SmartColor.parse("#ececec"),
    Color.alphaBlend(SmartColor.parse("rgba(255, 255, 255, 0.05)"),
        SmartColor.parse("#2c2c2c")));
Color weuiColorPrimary(Brightness brightness) =>
    _themeColor(brightness, Light.WEUI_BRAND, Dark.WEUI_BRAND);

Color weuiColorWarn(Brightness brightness) =>
    _themeColor(brightness, Light.WEUI_RED, Dark.WEUI_RED);

// active mask
Color weuiActiveMaskBlack(Brightness brightness) =>
    SmartColor.parse("rgba(0, 0, 0, 0.15)");

// // link
Color weuiLinkColorDefault(Brightness brightness) =>
    _themeColor(brightness, Light.WEUI_LINK, Dark.WEUI_LINK);

// background
Color weuiBgColorDefault(Brightness brightness) => _themeColor(brightness,Light.WEUI_BG_0,Dark.WEUI_BG_0);
Color weuiBgColorPrimary(Brightness brightness) => _themeColor(brightness,Light.WEUI_BG_1,Dark.WEUI_BG_1);

// line
Color weuiLineColorLight(Brightness brightness) => _themeColor(brightness,Light.WEUI_FG_3,Dark.WEUI_FG_3);
Color weuiLineColorDark(Brightness brightness) => _themeColor(brightness,Light.WEUI_FG_2,Dark.WEUI_FG_2);

// text
Color weuiTextColorTitle(Brightness brightness) => _themeColor(brightness,Light.WEUI_FG_0,Dark.WEUI_FG_0);
Color weuiTextColorDesc(Brightness brightness) => _themeColor(brightness,Light.WEUI_FG_0,Dark.WEUI_FG_0);
Color weuiTextColorTips(Brightness brightness) => _themeColor(brightness,Light.WEUI_FG_2,Dark.WEUI_FG_2);
Color weuiTextColorWarn(Brightness brightness) => weuiColorWarn(brightness);
