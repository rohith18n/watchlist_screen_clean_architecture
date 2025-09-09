import 'package:flutter/material.dart';
import 'package:watchlist_screen_clean_architecture/features/watchlist/presentation/widgets/widget_tabs.dart';

class WatchlistPage extends StatelessWidget {
  const WatchlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Watchlist")),
      body: const WatchlistTabs(),
    );
  }
}
