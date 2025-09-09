import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist_screen_clean_architecture/core/di/di.dart';
import 'package:watchlist_screen_clean_architecture/features/navigation/nav_cubit.dart';
import 'package:watchlist_screen_clean_architecture/features/watchlist/presentation/cubit/watchlist_cubit.dart';
import 'package:watchlist_screen_clean_architecture/home.dart';
import 'package:watchlist_screen_clean_architecture/core/constants/app_strings.dart';
import 'core/theme/app_theme.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<NavCubit>()),
        BlocProvider(
          create: (_) => getIt<WatchlistCubit>()..changeWatchlist('Default'),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: AppTheme.lightTheme,
        home: const Home(),
      ),
    );
  }
}
