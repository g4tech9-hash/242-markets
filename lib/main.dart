import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/theme/app_theme.dart';
import 'providers/market_provider.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MarketProvider()),
      ],
      child: const MarketsApp(),
    ),
  );
}

class MarketsApp extends StatelessWidget {
  const MarketsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '242 Markets',
      debugShowCheckedModeBanner: false,
      theme: bahamasTheme,
      home: const DashboardScreen(),
    );
  }
}
