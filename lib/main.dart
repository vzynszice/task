import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app2/core/constants/navigation/navigation_constants.dart';
import 'package:to_do_app2/core/init/navigation/navigation_route.dart';
import 'package:to_do_app2/core/init/navigation/navigation_service.dart';
import 'package:to_do_app2/core/init/notifier/provider_list.dart';
import 'package:to_do_app2/core/init/notifier/theme_notifier.dart';

Future<void> main() async {
  await _init();
  runApp(MultiProvider(
    providers: [...ApplicationProvider.instance.dependItems],
    child: const MyApp(),
  ));
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NavigationConstants.OPENING_VIEW,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      theme: context
          .watch<ThemeNotifier>()
          .currentTheme, //Provider.of<ThemeNotifier>(context, listen: false).currentTheme, çalışmıyo bu
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
