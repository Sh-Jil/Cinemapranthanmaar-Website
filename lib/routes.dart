import 'package:cinemapranthanmaar/src/homepage.dart';
import 'package:cinemapranthanmaar/src/shared/terms&privacy.dart';
import 'package:flutter/material.dart';

class RoutesName {
  // ignore: non_constant_identifier_names
  static const String home = '/home';
  static const String privacyPolicy = '/privacy_policy';
  // ignore: non_constant_identifier_names
  static const String terms = '/terms';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return _GeneratePageRoute(
            widget: const HomePage(), routeName: settings.name!);
      case RoutesName.privacyPolicy:
        return _GeneratePageRoute(
            widget: const PrivacyPolicy(), routeName: settings.name!);
      case RoutesName.terms:
        return _GeneratePageRoute(
            widget: const Terms(), routeName: settings.name!);
      default:
        return _GeneratePageRoute(
            widget: const HomePage(), routeName: settings.name!);
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
