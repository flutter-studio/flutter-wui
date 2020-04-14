import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_color/smart_color.dart';

// 黑暗主题对应颜色
class Dark {
  Dark._();
  static Color WEUI_BG_0 = SmartColor.parse("#191919");
  static Color WEUI_BG_1 = SmartColor.parse("#1f1f1f");
  static Color WEUI_BG_2 = SmartColor.parse("#232323");
  static Color WEUI_BG_3 = SmartColor.parse("#2f2f2f");
  static Color WEUI_BG_4 = SmartColor.parse("#606060");
  static Color WEUI_BG_5 = SmartColor.parse("#2c2c2c");
  static Color WEUI_FG_0 = SmartColor.parse("rgba(255, 255, 255, 0.8)");
  static Color WEUI_FG_HALF = SmartColor.parse("rgba(255, 255, 255, 0.6)");
  static Color WEUI_FG_1 = SmartColor.parse("rgba(255, 255, 255, 0.5)");
  static Color WEUI_FG_2 = SmartColor.parse("rgba(255, 255, 255, 0.3)");
  static Color WEUI_FG_3 = SmartColor.parse("rgba(255, 255, 255, 0.05)");
  static Color WEUI_RED = SmartColor.parse("#fa5151");
  static Color WEUI_ORANGE = SmartColor.parse("#c87d2f");
  static Color WEUI_YELLOW = SmartColor.parse("#cc9c00");
  static Color WEUI_GREEN = SmartColor.parse("#74a800");
  static Color WEUI_LIGHTGREEN = SmartColor.parse("#28b561");
  static Color WEUI_BRAND = SmartColor.parse("#07c160");
  static Color WEUI_BLUE = SmartColor.parse("#10aeff");
  static Color WEUI_INDIGO = SmartColor.parse("#1196ff");
  static Color WEUI_PURPLE = SmartColor.parse("#8183ff");
  static Color WEUI_WHITE = SmartColor.parse("rgba(255, 255, 255, 0.8)");
  static Color WEUI_LINK = SmartColor.parse("#7d90a9");
  static Color WEUI_TEXTGREEN = SmartColor.parse("#259c5c");
  static Color WEUI_FG = SmartColor.parseCssColor(CSSColor.white);
  static Color WEUI_BG = SmartColor.parseCssColor(CSSColor.black);
  static Color WEUI_TAG_TEXT_ORANGE =
      SmartColor.parse("rgba(250, 157, 59, 0.6)");
  static Color WEUI_TAG_BACKGROUND_ORANGE =
      SmartColor.parse("rgba(250, 157, 59, 0.1)");
  static Color WEUI_TAG_TEXT_GREEN = SmartColor.parse("rgba(6, 174, 86, 0.6)");
  static Color WEUI_TAG_BACKGROUND_GREEN =
      SmartColor.parse("rgba(6, 174, 86, 0.1)");
  static Color WEUI_TAG_TEXT_BLUE = SmartColor.parse("rgba(16, 174, 255, 0.6)");
  static Color WEUI_TAG_BACKGROUND_BLUE =
      SmartColor.parse("rgba(16, 174, 255, 0.1)");
  static Color WEUI_TAG_TEXT_BLACK =
      SmartColor.parse("rgba(255, 255, 255, 0.5)");
  static Color WEUI_TAG_BACKGROUND_BLACK =
      SmartColor.parse("rgba(255, 255, 255, 0.05)");
}

// 明亮主题对应颜色
class Light {
  Light._();
  static Color WEUI_BG_0 = SmartColor.parse("#ededed");
  static Color WEUI_BG_1 = SmartColor.parse("#f7f7f7");
  static Color WEUI_BG_2 = SmartColor.parse("#fff");
  static Color WEUI_BG_3 = SmartColor.parse("#f7f7f7");
  static Color WEUI_BG_4 = SmartColor.parse("#4c4c4c");
  static Color WEUI_BG_5 = SmartColor.parse("#fff");
  static Color WEUI_FG_0 = SmartColor.parse("rgba(0, 0, 0, 0.9)");
  static Color WEUI_FG_HALF = SmartColor.parse("rgba(0, 0, 0, 0.9)");
  static Color WEUI_FG_1 = SmartColor.parse("rgba(0, 0, 0, 0.5)");
  static Color WEUI_FG_2 = SmartColor.parse("rgba(0, 0, 0, 0.3)");
  static Color WEUI_FG_3 = SmartColor.parse("rgba(0, 0, 0, 0.1)");
  static Color WEUI_RED = SmartColor.parse("#fa5151");
  static Color WEUI_ORANGE = SmartColor.parse("#fa9d3b");
  static Color WEUI_YELLOW = SmartColor.parse("#ffc300");
  static Color WEUI_GREEN = SmartColor.parse("#91d300");
  static Color WEUI_LIGHTGREEN = SmartColor.parse("#95ec69");
  static Color WEUI_BRAND = SmartColor.parse("#07c160");
  static Color WEUI_BLUE = SmartColor.parse("#10aeff");
  static Color WEUI_INDIGO = SmartColor.parse("#1485ee");
  static Color WEUI_PURPLE = SmartColor.parse("#6467f0");
  static Color WEUI_WHITE = SmartColor.parse("#fff");
  static Color WEUI_LINK = SmartColor.parse("#576b95");
  static Color WEUI_TEXTGREEN = SmartColor.parse("#06ae56");
  static Color WEUI_FG = SmartColor.parseCssColor(CSSColor.black);
  static Color WEUI_BG = SmartColor.parseCssColor(CSSColor.white);
  static Color WEUI_TAG_TEXT_ORANGE = SmartColor.parse("#fa9d3b");
  static Color WEUI_TAG_BACKGROUND_ORANGE =
      SmartColor.parse("rgba(250, 157, 59, 0.1)");
  static Color WEUI_TAG_TEXT_GREEN = SmartColor.parse("#06ae56");
  static Color WEUI_TAG_BACKGROUND_GREEN =
      SmartColor.parse("rgba(6, 174, 86, 0.1)");
  static Color WEUI_TAG_TEXT_BLUE = SmartColor.parse("#10aeff");
  static Color WEUI_TAG_BACKGROUND_BLUE =
      SmartColor.parse("rgba(16, 174, 255, 0.1)");
  static Color WEUI_TAG_TEXT_BLACK = SmartColor.parse("rgba(0, 0, 0, 0.5)");
  static Color WEUI_TAG_BACKGROUND_BLACK =
      SmartColor.parse("rgba(0, 0, 0, 0.05)");
}

class WeuiApp extends StatelessWidget {
  WeuiApp({
    @required this.child,
    this.theme,
  }) : assert(child != null);
  final Widget child;
  final WeuiThemeData theme;
  @override
  Widget build(BuildContext context) {
    return WeuiTheme(
      child: child,
      data: theme ?? WeuiThemeData.light(),
    );
  }
}

class WeuiTheme extends StatelessWidget {
  WeuiTheme({
    Key key,
    @required this.data,
    @required this.child,
  })  : assert(data != null),
        assert(child != null),
        super(key: key);
  final WeuiThemeData data;
  final Widget child;

  static WeuiThemeData of(BuildContext context) {
    final _InheritedTheme inheritedTheme =
        context.inheritFromWidgetOfExactType(_InheritedTheme);
    return inheritedTheme?.theme?.data ?? WeuiThemeData.light();
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedTheme(
      theme: this,
      child: child,
    );
  }
}

@immutable
class WeuiThemeData extends Diagnosticable {
  factory WeuiThemeData.light() => null;
}

class _InheritedTheme extends InheritedWidget {
  const _InheritedTheme({
    Key key,
    @required this.theme,
    @required Widget child,
  })  : assert(theme != null),
        super(key: key, child: child);

  final WeuiTheme theme;

  @override
  bool updateShouldNotify(_InheritedTheme old) => theme.data != old.theme.data;
}