import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_screen_clean_architecture/features/watchlist/presentation/cubit/watchlist_state.dart';
import 'package:watchlist_screen_clean_architecture/features/watchlist/presentation/pages/search_page.dart';
import 'package:watchlist_screen_clean_architecture/features/watchlist/presentation/widgets/search_wdgt.dart';
import '../cubit/watchlist_cubit.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class WatchlistTabs extends StatelessWidget {
  const WatchlistTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchlistCubit, WatchlistState>(
      builder: (context, state) {
        final tabs = state.watchlists.keys.toList();

        return DefaultTabController(
          length: tabs.length,
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                tabs: tabs.map((tab) => Tab(text: tab)).toList(),
                onTap: (index) {
                  context.read<WatchlistCubit>().changeWatchlist(tabs[index]);
                },
              ),
              SearchActionBar(
                hintText: "Search and Add Scrips",
                onSearchTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DummySearchPage()),
                  );
                },
                onGridTap: () {},
                onFilterTap: () {},
              ),

              Expanded(
                child: TabBarView(
                  children: tabs.map((tab) {
                    final currentList = state.watchlists[tab]!;
                    return ListView.builder(
                      itemCount: currentList.length,
                      itemBuilder: (_, index) {
                        final item = currentList[index];
                        return ListTile(
                          title: Text(item.symbol, style: AppTextStyles.body),
                          subtitle: Text(
                            "₹${item.price.toStringAsFixed(2)}",
                            style: AppTextStyles.subtitle,
                          ),
                          trailing: Text(
                            "${item.change > 0 ? "+" : ""}${item.change.toStringAsFixed(2)}",
                            style: TextStyle(
                              color: item.change >= 0
                                  ? AppColors.positive
                                  : AppColors.negative,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
