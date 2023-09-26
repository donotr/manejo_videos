import 'package:flutter/material.dart';
import 'package:video_managment/config/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:video_managment/presentation/providers/discover_provider.dart';
import 'package:video_managment/presentation/screen/discover_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        lazy: false,
        create: (_) => DiscoverProvider()..loadNextPage())
    ],
    child: MaterialApp(
      title: 'AppVideos',
      debugShowCheckedModeBanner: false,
      theme: appTheme().getTheme(),
      home: const DiscoverScreen()
      ),
    );
  }
}