import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogBtnColor {
  static const Color btnDefault = const Color(0xff353535);
  static const Color btnPrimary = const Color(0xff09bb07);
}

class DialogActions {
  DialogActions({this.text, this.onPressed, this.color = DialogBtnColor.btnPrimary});
  final String text;
  final VoidCallback onPressed;
  final Color color;
}

class _AndroidDialog extends StatelessWidget {
  _AndroidDialog({Key key, this.title, this.content, this.actions}) : super(key: key);

  final String title;
  final String content;
  final List<DialogActions> actions;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle = theme.textTheme.subhead.copyWith(color: theme.textTheme.caption.color);
    return AlertDialog(
      title: title != null ? Text(title) : null,
      content: Text(
        content,
        style: dialogTextStyle,
      ),
      actions: actions
          .map((action) => FlatButton(
                child: Text(
                  action.text,
                  style: TextStyle(color: action.color),
                ),
                highlightColor: Color(0xFFDEDEDE),
                onPressed: () {
                  Navigator.pop(context);
                  if (action.onPressed != null) action.onPressed();
                },
              ))
          .toList(),
    );
  }
}

class _IosDialog extends StatelessWidget {
  _IosDialog({Key key, this.title, this.content, this.actions}) : super(key: key);

  final String title;
  final String content;
  final List<DialogActions> actions;
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
        title: title != null ? Text(title) : null,
        content: Text(content),
        actions: actions
            .map(
              (action) => CupertinoDialogAction(
                    child: Text(
                      action.text,
                      style: TextStyle(color: action.color),
                    ),
                    isDefaultAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                      if (action.onPressed != null) action.onPressed();
                    },
                  ),
            )
            .toList());
  }
}

class WDialog {
  static show(BuildContext context, {String title, String content, List<DialogActions> actions = const [], TargetPlatform platform = TargetPlatform.android}) {
    if (platform == TargetPlatform.android) {
      showDialog(
          context: context,
          builder: (_) => _AndroidDialog(
                title: title,
                content: content,
                actions: actions,
              ));
    } else {
      showDialog(
          context: context,
          builder: (_) => _IosDialog(
                title: title,
                content: content,
                actions: actions,
              ));
    }
  }
}
