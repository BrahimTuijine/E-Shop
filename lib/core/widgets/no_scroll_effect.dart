import 'package:flutter/material.dart';

class NoScrollEffect extends StatelessWidget {
  final Widget child;
  const NoScrollEffect({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification notification) {
        notification.disallowIndicator();
        return true;
      },
      child: child,
    );
  }
}
