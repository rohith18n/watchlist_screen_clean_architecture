import '../../domain/models/watch_item.dart';

class WatchlistState {
  final String selectedList;
  final Map<String, List<WatchItem>> watchlists;

  WatchlistState({required this.selectedList, required this.watchlists});

  WatchlistState copyWith({
    String? selectedList,
    Map<String, List<WatchItem>>? watchlists,
  }) {
    return WatchlistState(
      selectedList: selectedList ?? this.selectedList,
      watchlists: watchlists ?? this.watchlists,
    );
  }
}
