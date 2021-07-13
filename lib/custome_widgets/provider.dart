import 'package:flutter/material.dart';
import 'package:sokaklardakii_dostumuz/services/auth_service.dart';

class Provider extends InheritedWidget {
  final AuthService auth;

  Provider({Key key, Widget child, this.auth}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static Provider of(BuildContext context, {bool listen}) =>
      (context.dependOnInheritedWidgetOfExactType<Provider>() as Provider);
}