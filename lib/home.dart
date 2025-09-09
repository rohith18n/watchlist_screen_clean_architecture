import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_screen_clean_architecture/core/constants/app_strings.dart';
import 'package:watchlist_screen_clean_architecture/features/navigation/nav_cubit.dart';
import 'features/watchlist/presentation/pages/watchlist_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static final List<Widget> _pages = const [
    WatchlistPage(),
    Center(child: Text(AppStrings.orders)),
    Center(child: Text(AppStrings.portfolio)),
    Center(child: Text(AppStrings.movers)),
    Center(child: Text(AppStrings.profile)),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: _pages[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) => context.read<NavCubit>().changeTab(index),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark),
                label: AppStrings.watchlist,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_travel),
                label: AppStrings.orders,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_post_office_outlined),
                label: AppStrings.portfolio,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_sharp),
                label: AppStrings.movers,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: AppStrings.profile,
              ),
            ],
          ),
        );
      },
    );
  }
}
