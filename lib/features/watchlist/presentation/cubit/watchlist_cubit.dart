import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../data/watchlist_repository.dart';
import 'watchlist_state.dart';

@injectable
class WatchlistCubit extends Cubit<WatchlistState> {
  final WatchlistRepository repository;

  WatchlistCubit(this.repository)
    : super(
        WatchlistState(
          selectedList: repository.getWatchlists().keys.first,
          watchlists: repository.getWatchlists(),
        ),
      );

  void changeWatchlist(String name) {
    emit(state.copyWith(selectedList: name));
  }
}
