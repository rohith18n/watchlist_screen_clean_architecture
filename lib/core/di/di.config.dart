// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:watchlist_screen_clean_architecture/features/navigation/nav_cubit.dart'
    as _i500;
import 'package:watchlist_screen_clean_architecture/features/watchlist/data/watchlist_repository.dart'
    as _i419;
import 'package:watchlist_screen_clean_architecture/features/watchlist/presentation/cubit/watchlist_cubit.dart'
    as _i180;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i500.NavCubit>(() => _i500.NavCubit());
    gh.lazySingleton<_i419.WatchlistRepository>(
      () => _i419.WatchlistRepository(),
    );
    gh.factory<_i180.WatchlistCubit>(
      () => _i180.WatchlistCubit(gh<_i419.WatchlistRepository>()),
    );
    return this;
  }
}
