import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/api/api_client.dart';
import 'package:flutter/foundation.dart';

class MarketProvider with ChangeNotifier {
  final ApiClient _apiClient = ApiClient();
  String _activeTicker = 'BISX';
  List<Map<String, dynamic>> _watchlist = [];

  String get activeTicker => _activeTicker;
  List<Map<String, dynamic>> get watchlist => _watchlist;

  void setActiveTicker(String ticker) {
    _activeTicker = ticker;
    notifyListeners();
  }

  Future<void> fetchWatchlist() async {
    try {
      _watchlist = await _apiClient.getAssets();
      notifyListeners();
    } catch (e) {
      debugPrint('Error fetching assets: $e');
    }
  }
}
