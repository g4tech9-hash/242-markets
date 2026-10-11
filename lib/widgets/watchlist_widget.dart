import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/market_provider.dart';
import '../core/theme/app_theme.dart';

class WatchlistWidget extends StatelessWidget {
  const WatchlistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final marketProvider = Provider.of<MarketProvider>(context);

    return Container(
      width: 300,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Icon(Icons.search, color: AppColors.textSecondary, size: 20),
                  const SizedBox(width: 10),
                  Text(
                    'Search BISX...',
                    style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white10, height: 1),
            Expanded(
              child: ListView.builder(
                itemCount: marketProvider.watchlist.length,
                itemBuilder: (context, index) {
                  final asset = marketProvider.watchlist[index];
                  final bool isActive = marketProvider.activeTicker == asset['ticker'];

                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    title: Text(
                      asset['ticker'],
                      style: TextStyle(
                        color: isActive ? AppColors.primary : AppColors.textPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      asset['company_name'],
                      style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('\$10.90', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Text(
                          '+1.2%',
                          style: TextStyle(color: AppColors.emerald, fontSize: 12),
                        ),
                      ],
                    ),
                    onTap: () => marketProvider.setActiveTicker(asset['ticker']),
                    tileColor: isActive ? AppColors.primary.withValues(alpha: 0.1) : null,
                    selected: isActive,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
