import 'package:watchlist_screen_clean_architecture/features/watchlist/domain/models/watch_item.dart';

final mockWatchlists = {
  "Watchlist 1": [
    WatchItem(symbol: "NATIONALUM", price: 193.70, change: 4.02),
    WatchItem(symbol: "WIPRO", price: 310.15, change: -0.05),
    WatchItem(symbol: "UPL", price: 637.95, change: -17.45),
    WatchItem(symbol: "HDFCBANK", price: 1623.40, change: 22.10),
    WatchItem(symbol: "INFY", price: 1498.20, change: -12.50),
  ],
  "Watchlist 🤖": [
    WatchItem(symbol: "TCS", price: 3942.20, change: -8.15),
    WatchItem(symbol: "TITAN", price: 3264.05, change: -6.80),
    WatchItem(symbol: "RELIANCE", price: 2598.60, change: 15.40),
    WatchItem(symbol: "ADANIPORTS", price: 1250.70, change: -9.25),
    WatchItem(symbol: "MARUTI", price: 9876.30, change: 45.60),
  ],
  "Watchlist 3": [
    WatchItem(symbol: "ULTRACEMCO", price: 11621.20, change: 143.00),
    WatchItem(symbol: "TECHM", price: 1686.60, change: -6.40),
    WatchItem(symbol: "ICICIBANK", price: 984.20, change: 8.15),
    WatchItem(symbol: "SBIN", price: 601.30, change: -3.50),
    WatchItem(symbol: "AXISBANK", price: 1132.80, change: 5.75),
  ],
  "NIFTY50": [
    WatchItem(symbol: "RELIND", price: 11621.20, change: 143.00),
    WatchItem(symbol: "MANDM", price: 1686.60, change: -6.40),
    WatchItem(symbol: "ICICIBANK", price: 984.20, change: 8.15),
    WatchItem(symbol: "SBIN", price: 601.30, change: -3.50),
    WatchItem(symbol: "AXISBANK", price: 1132.80, change: 5.75),
  ],
};
