import 'package:injectable/injectable.dart';
import 'package:watchlist_screen_clean_architecture/features/watchlist/domain/models/watch_item.dart';
import 'mock_data.dart';

@lazySingleton
class WatchlistRepository {
  Map<String, List<WatchItem>> getWatchlists() => mockWatchlists;
}
